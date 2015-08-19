package com.sd.web.service.question;

import java.security.InvalidParameterException;
import java.util.Date;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import com.sd.admin.web.service.IDocumentAdminService;
import com.sd.web.constants.MessageConstants;
import com.sd.web.domain.question.Questions;
import com.sd.web.domain.user.User;
import com.sd.web.enums.EnumDocumentStatus;
import com.sd.web.service.document.impl.DocumentServiceImpl;
import com.sd.web.service.user.IUserService;
import com.sd.web.util.FileOperationsUtil;

public class QuestionService {

	
	private static final Logger logger = Logger.getLogger(DocumentServiceImpl.class);
	
	@Autowired
	private IUserService userService;
	
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

	public IUserService getUserService() {
		return userService;
	}
	
	@Transactional
	public String uploadFile(String displayName, String subject, String description, Date deadline, double amount, MultipartFile file) {
		Questions QuestionDB = getQuestions(displayName,subject, description, deadline, amount);
		if(QuestionDB == null){
			throw new InvalidParameterException(MessageConstants.INVALID_SESSION);
		}
		
		
		Long id = saveQuestion(QuestionDB);
		logger.info("Question ID After saving is " + id);
		String fullFileName = FileOperationsUtil.uploadUserFile(id, file,getUserService().getUserIdFromPrincipal());
		if(StringUtils.isBlank(fullFileName)){
			return MessageConstants.SOMETHING_WRONG;
		}
		QuestionDB.setAttachment(fullFileName);
		saveQuestion(QuestionDB);
		return MessageConstants.FILE_UPLOAD_SUCCESS;
	}
	
	private Long saveQuestion(Questions QuestionDB){
		Long id = (Long)getSessionFactory().getCurrentSession().save(QuestionDB);
		if(id == null){
			throw new InvalidParameterException(MessageConstants.SOMETHING_WRONG);
		}
		return id;
	}

	private Questions getQuestions(String displayName, String subject, String description, Date deadline, double amount){
		Questions QuestionDB = new Questions();
		QuestionDB.setDescription(description);
		QuestionDB.setAmount(amount);
		QuestionDB.setDeadlineDt(deadline);
		QuestionDB.setDisplayName(displayName);
		QuestionDB.setCreateDt(new Date());
		QuestionDB.setUpdateDt(QuestionDB.getCreateDt());
		QuestionDB.setSubject(subject);
		QuestionDB.setStatus(EnumDocumentStatus.PENDING.getDocumentStatusId());
		User user = getUserService().getUSerFromPrincipal();
		if(user  == null){
			return null;
		}
		QuestionDB.setUserID(user);
		return QuestionDB;
	}
	
	
}
