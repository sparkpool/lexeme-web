package com.lexeme.admin.web.service.impl;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lexeme.admin.web.service.IDocumentAdminService;
import com.lexeme.web.constants.MessageConstants;
import com.lexeme.web.domain.document.DocumentDB;
import com.lexeme.web.domain.user.User;
import com.lexeme.web.enums.EnumDocumentStatus;
import com.lexeme.web.exception.LexemeWebException;
import com.lexeme.web.pojo.document.DocumentPojo;
import com.lexeme.web.service.course.ICourseService;
import com.lexeme.web.service.document.impl.DocumentServiceImpl;
import com.lexeme.web.service.user.IUserService;
import com.lexeme.web.util.FileOperationsUtil;
import com.lexeme.web.util.PropertiesUtil;

@Service
public class DocumentAdminServiceImpl implements IDocumentAdminService{

	private static final Logger logger = Logger.getLogger(DocumentServiceImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	private ICourseService courseService;

	@Autowired
	private IUserService userService;
	
	public ICourseService getCourseService() {
		return courseService;
	}

	public IUserService getUserService() {
		return userService;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Override
	public List<DocumentPojo> getUnverifiedDocuments(int perPage) {
		List<DocumentPojo> files = new ArrayList<DocumentPojo>();
		String folderPath = PropertiesUtil.getProjectProperty("unverified.prefix");
		File folder = new File(folderPath);
		File[] listOfFiles = folder.listFiles();
		int noOfFiles = 0;
        if(listOfFiles!=null && listOfFiles.length > 0){
        	DocumentPojo document = null;
        	for(File file : listOfFiles){
        		noOfFiles++;
        		if(noOfFiles > perPage){
        			break;
        		}
        		String fullName = file.getName();
        		logger.info("File Name is " + fullName);
        		if(fullName.contains("#")){
            		String[] splitNames = fullName.split("#");
            		document = new DocumentPojo(Long.parseLong(splitNames[0]), splitNames[1]);
            		files.add(document);	
        		}else{
        			noOfFiles--;
        		}
        	}
        }
		return files;
	}

	@Override
	@Transactional
	public String deleteDocument(Long documentId) {
		DocumentDB document = getDocumentById(documentId);
        if(document == null){
        	return MessageConstants.INVALID_DOCUMENT;
        }
        document.setStatus(EnumDocumentStatus.DELETED.getDocumentStatusId());
        document.setReviewBy(getUserService().getUSerFromPrincipal());
        Long id = (Long)getSessionFactory().getCurrentSession().save(document);
        if(id==null){
        	return MessageConstants.ERROR_DOCUMENT_DELETED;
        }
        String fileName = document.getPath();
        moveFileInDeletedFolder(fileName);
		return null;
	}
	
	private void moveFileInDeletedFolder(String oldFileName){
		String folderPath = PropertiesUtil.getProjectProperty("unverified.prefix");
		String delFolderPath = PropertiesUtil.getProjectProperty("deleted.prefix");
		String newFileName = delFolderPath + oldFileName;
		oldFileName = folderPath + oldFileName;
		boolean fileMoved = FileOperationsUtil.moveFile(oldFileName, newFileName);
		if(!fileMoved){
			throw new LexemeWebException(MessageConstants.ERROR_DOCUMENT_DELETED);
		}
	}
	
	@Override
	public DocumentDB getDocumentById(Long documentId){
        Query query = getSessionFactory().getCurrentSession().getNamedQuery("GET.BYID");
        return (DocumentDB)query.setParameter("id", documentId).uniqueResult();
	}

	@Override
	@Transactional
	public DocumentPojo getDocumentFromDocumentId(Long documentId) {
		DocumentDB document = getDocumentById(documentId);
		if(document!=null){
			return getDocumentPojoFromDocument(document);
		}
		return null;
	}
	
	private DocumentPojo getDocumentPojoFromDocument(DocumentDB document){
		DocumentPojo documentPojo = new DocumentPojo();
		documentPojo.setCategory(document.getCategory());
		documentPojo.setCourseID(document.getCourse()!=null ? document.getCourse().getCourseID() : null);
		documentPojo.setDescription(document.getDescription());
		documentPojo.setDocumentId(document.getId());
		return documentPojo;
	}

	@Override
	@Transactional
	public String saveDocument(DocumentPojo documentPojo) {
		DocumentDB document = getDocumentById(documentPojo.getDocumentId());
		if(document != null){
			document.setDescription(documentPojo.getDescription().toLowerCase());
			document.setCategory(documentPojo.getCategory());
			document.setDisplayName(documentPojo.getName());
			if(StringUtils.isNotBlank(documentPojo.getCourseID())){
				document.setCourse(getCourseService().saveCourseIfNotExist(documentPojo.getCourseID()));
			}
			document.setStatus(EnumDocumentStatus.VERIFIED.getDocumentStatusId());
			User user = getUserService().getUSerFromPrincipal();
			document.setReviewBy(user);
			document.setPath(saveVerifiedDocument(document.getPath(), user.getId()));
			Long id = (Long)getSessionFactory().getCurrentSession().save(document);
			if(id!=null){
				return MessageConstants.DOCUMENT_VERIFIED;
			}
			throw new LexemeWebException(MessageConstants.SOMETHING_WRONG);
		}
		return null;
	}
	
	/**
	 * IT will move file from unverified to verified folder
	 * Verified Folder will be in folder like: /documentPrefix/userId/
	 * @param fileName
	 * @param userId
	 * @return
	 */
	private String saveVerifiedDocument(String fileName, Long userId){
		String verifiedFolderPrefix = PropertiesUtil.getProjectProperty("verified.prefix");
		verifiedFolderPrefix = verifiedFolderPrefix + "user_" + userId;
		boolean folderCreated = FileOperationsUtil.createDir(verifiedFolderPrefix);
		logger.info("Verified Folder Creation result " + folderCreated + " " + verifiedFolderPrefix);
		verifiedFolderPrefix = verifiedFolderPrefix + "/" + fileName;
		String unverifiedFolderPath = PropertiesUtil
				.getProjectProperty("unverified.prefix");
		unverifiedFolderPath = unverifiedFolderPath + fileName;
		boolean moveDone = FileOperationsUtil.moveFile(unverifiedFolderPath,
				verifiedFolderPrefix);
		if (!moveDone) {
			throw new LexemeWebException(MessageConstants.SOMETHING_WRONG);
		}
		return verifiedFolderPrefix;
	}
}
