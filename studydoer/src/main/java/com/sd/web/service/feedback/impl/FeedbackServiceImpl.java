package com.sd.web.service.feedback.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sd.web.constants.MessageConstants;
import com.sd.web.domain.feedback.UserFeedback;
import com.sd.web.domain.user.User;
import com.sd.web.enums.EnumFeedbackStatus;
import com.sd.web.pojo.feedback.FeedbackPojo;
import com.sd.web.service.email.IEmailManager;
import com.sd.web.service.feedback.IFeedbackService;
import com.sd.web.service.user.IUserService;

@Service
public class FeedbackServiceImpl implements IFeedbackService{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private IEmailManager emailManager;
	
	@Autowired
	private IUserService userService;
	
	public IEmailManager getEmailManager() {
		return emailManager;
	}

	@Override
	public String saveFeedback(FeedbackPojo feedbackPojo) {
		UserFeedback userFeedback = getUserFeedbackFromPojo(feedbackPojo);
		Long id = (Long)getSessionFactory().getCurrentSession().save(userFeedback);
		if(id!=null){
			//Now Need to send Email to user
			User user = getUserService().getUSerFromPrincipal();
			getEmailManager().sendFeedbackEmail(user.getEmail(), user.getUserName(), feedbackPojo);
			return null;
		}
		return MessageConstants.SOMETHING_WRONG;
	}
	
	public IUserService getUserService() {
		return userService;
	}

	private UserFeedback getUserFeedbackFromPojo(FeedbackPojo feedbackPojo){
		UserFeedback userFeedback = new UserFeedback();
		userFeedback.setCategory(feedbackPojo.getCategory());
		userFeedback.setComment(feedbackPojo.getComment());
		userFeedback.setEmail(feedbackPojo.getEmail());
		userFeedback.setSubject(feedbackPojo.getSubject());
		userFeedback.setStatus(EnumFeedbackStatus.PENDING.getStatusId());
		return userFeedback;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

}
