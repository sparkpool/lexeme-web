package com.lexeme.web.service.document.impl;

import java.security.InvalidParameterException;
import java.util.Date;
import java.util.Set;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.lexeme.admin.web.service.IDocumentAdminService;
import com.lexeme.web.constants.MessageConstants;
import com.lexeme.web.domain.acl.Roles;
import com.lexeme.web.domain.course.Course;
import com.lexeme.web.domain.document.DocumentDB;
import com.lexeme.web.domain.user.User;
import com.lexeme.web.enums.EnumDocumentStatus;
import com.lexeme.web.enums.EnumRoles;
import com.lexeme.web.service.course.ICourseService;
import com.lexeme.web.service.document.IDocumentService;
import com.lexeme.web.service.user.IUserService;
import com.lexeme.web.util.FileOperationsUtil;
import com.lexeme.web.util.PropertiesUtil;

@Service
public class DocumentServiceImpl implements IDocumentService{

	private static final Logger logger = Logger.getLogger(DocumentServiceImpl.class);
	
	@Autowired
	private IUserService userService;
	
	@Autowired
	private ICourseService courseService;
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public IDocumentAdminService getDocumentAdminService() {
		return documentAdminService;
	}

	@Autowired
	private IDocumentAdminService documentAdminService;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public ICourseService getCourseService() {
		return courseService;
	}

	public IUserService getUserService() {
		return userService;
	}

	@Override
	@Transactional
	public String uploadFile(String category, String courseId, String description, MultipartFile file) {
		DocumentDB documentDB = getDocument(category, description);
		if(documentDB == null){
			throw new InvalidParameterException(MessageConstants.INVALID_SESSION);
		}
		if(StringUtils.isNotBlank(courseId)){
			Course course = getCourseService().saveCourseIfNotExist(courseId);
			documentDB.setCourse(course);
		}
		
		Long id = saveDocument(documentDB);
		logger.info("Document ID After saving is " + id);
		String fullFileName = FileOperationsUtil.uploadUnverifiedFile(id, file);
		if(StringUtils.isBlank(fullFileName)){
			return MessageConstants.SOMETHING_WRONG;
		}
	  documentDB.setPath(fullFileName);
	  saveDocument(documentDB);
	  return MessageConstants.FILE_UPLOAD_SUCCESS;
	}
	
	private Long saveDocument(DocumentDB documentDB){
		Long id = (Long)getSessionFactory().getCurrentSession().save(documentDB);
		if(id == null){
			throw new InvalidParameterException(MessageConstants.SOMETHING_WRONG);
		}
		return id;
	}
	
	private DocumentDB getDocument(String category, String description){
		DocumentDB documentDB = new DocumentDB();
		documentDB.setCategory(category);
		documentDB.setDescription(description.toLowerCase());
		documentDB.setCreateDt(new Date());
		documentDB.setStatus(EnumDocumentStatus.PENDING.getDocumentStatusId());
		User user = getUserService().getUSerFromPrincipal();
		if(user  == null){
			return null;
		}
		documentDB.setUser(user);
		return documentDB;
	}

	@Override
	@Transactional
	public String getFilePathOfDocumentID(Long documentId) {
		DocumentDB document = getDocumentAdminService().getDocumentById(documentId);
		if(document != null){
			User user = getUserService().getUSerFromPrincipal();
			Set<Roles> roles = user.getRoles();
            return getFileAccordingToRole(document.getPath(), roles, document.getStatus());
		}
		return null;
	}
	
	private String getFileAccordingToRole(String filePath, Set<Roles> roles, Long documentStatusId){
		if(EnumDocumentStatus.DELETED.getDocumentStatusId().equals(documentStatusId)){
			return null;
		}
		boolean hasModeratorRole = checkIfRoleContains(EnumRoles.MODERATOR.getRole(), roles);
		if(!hasModeratorRole && !EnumDocumentStatus.VERIFIED.getDocumentStatusId().equals(documentStatusId)){
			return null;
		}else if(hasModeratorRole && !EnumDocumentStatus.VERIFIED.getDocumentStatusId().equals(documentStatusId)){
			String folderPath = PropertiesUtil.getProjectProperty("unverified.prefix");
			return folderPath + filePath;
		}
		return filePath;
	}
	
	private boolean checkIfRoleContains(String roleStr, Set<Roles> roles){
		for(Roles role : roles){
			if(role.getName().equals(roleStr)){
				return true;
			}
		}
		return false;
	}

}
