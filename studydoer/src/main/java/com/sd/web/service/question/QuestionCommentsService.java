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
import com.sd.web.domain.question.QuestionComments;
import com.sd.web.domain.question.Questions;
import com.sd.web.domain.user.User;
import com.sd.web.enums.EnumDocumentStatus;
import com.sd.web.service.document.impl.DocumentServiceImpl;
import com.sd.web.service.user.IUserService;
import com.sd.web.util.FileOperationsUtil;

public class QuestionCommentsService {
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
	public String uploadFile(String comment, MultipartFile file) {
		QuestionComments QuestionCommentsDB = getQuestionsCommentDB(comment);
		if(QuestionCommentsDB == null){
			throw new InvalidParameterException(MessageConstants.INVALID_SESSION);
		}
		
		
		Long id = saveQuestionComment(QuestionCommentsDB);
		logger.info("Question comment ID After saving is " + id);
		String fullFileName = FileOperationsUtil.uploadUserFile(id, file,getUserService().getUserIdFromPrincipal());
		if(StringUtils.isBlank(fullFileName)){
			return MessageConstants.SOMETHING_WRONG;
		}
		QuestionCommentsDB.setAttachment(fullFileName);
		saveQuestionComment(QuestionCommentsDB);
		return MessageConstants.FILE_UPLOAD_SUCCESS;
	}
	
	private Long saveQuestionComment(QuestionComments QuestionCommentsDB){
		Long id = (Long)getSessionFactory().getCurrentSession().save(QuestionCommentsDB);
		if(id == null){
			throw new InvalidParameterException(MessageConstants.SOMETHING_WRONG);
		}
		return id;
	}

	private QuestionComments getQuestionsCommentDB(String comment){
		QuestionComments QuestionCommentDB = new QuestionComments();
		QuestionCommentDB.setComment(comment);
		QuestionCommentDB.setCreateDt(new Date());
		User user = getUserService().getUSerFromPrincipal();
		if(user  == null){
			return null;
		}
		QuestionCommentDB.setUserID(user);
		return QuestionCommentDB;
	}
}
