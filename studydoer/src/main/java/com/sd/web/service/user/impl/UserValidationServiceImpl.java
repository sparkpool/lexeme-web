package com.sd.web.service.user.impl;

import java.security.InvalidParameterException;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sd.web.constants.MessageConstants;
import com.sd.web.domain.user.User;
import com.sd.web.service.email.IEmailManager;
import com.sd.web.service.user.IUserTokenService;
import com.sd.web.service.user.IUserValidationService;

@Service
public class UserValidationServiceImpl implements IUserValidationService{

	private static final Logger logger = Logger.getLogger(UserValidationServiceImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	private IUserTokenService userTokenService;

	@Autowired
	private IEmailManager emailManager;
	
	@Override
	@Transactional
	public String validateUserNameOrEmailForSignUp(String userName, String email) {
		if(StringUtils.isBlank(userName) && StringUtils.isBlank(email)){
			throw new InvalidParameterException(MessageConstants.INVALID_USERNAME_EMAIL);
		}
	  return validateUserAndReturnMsg(email, userName);
	}

	private String validateUserAndReturnMsg(String email, String userName){
		if(StringUtils.isNotBlank(userName) && StringUtils.isNotBlank(email)){
			List<User> results = validateUserOrEmail(email, userName);
			logger.info("Results from DB for User Validation is " + results);
			if(results != null && results.size() > 0){
				return MessageConstants.USERNAME_EMAIL_EXIST;
			}
		}else if(StringUtils.isNotBlank(email)){
			User user = validateEmail(email);
			logger.info("Results from DB for User Validation is " + user);
			if(user!=null){
				return MessageConstants.EMAIL_EXIST;
			}
		}else{
			User user = validateUserName(userName);
			logger.info("Results from DB for User Validation is " + user);
			if(user!=null){
				return MessageConstants.USERNAME_EXIST;
			}
		}
		return null;
	}
	
	@Override
	public User validateUser(String email){
		if(StringUtils.isNotBlank(email)){
			User user = validateEmail(email);
			logger.info("Results from DB for User Validation is " + user);
			return user;
		}
		return null;
	}
	
	@Override
	public User validateUserName(String userName){
		Query query = getSessionFactory().getCurrentSession().getNamedQuery("USERNAME.VALIDATE")
				.setString("userName", userName);
		return (User)query.uniqueResult();
	}
	
	private User validateEmail(String email){
		Query query = getSessionFactory().getCurrentSession().getNamedQuery("EMAIL.VALIDATE")
				.setString("email", email);
		return (User)query.uniqueResult();
	}
	
	@SuppressWarnings("unchecked")
	private List<User> validateUserOrEmail(String email, String userName){
		Query query = getSessionFactory().getCurrentSession().getNamedQuery("USER.VALIDATE")
				.setString("email", email).setString("userName", userName);
		return (List<User>)query.list();		
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Override
	@Transactional
	public boolean validateUserAndFPLink(String email, String contextPath) throws NoSuchAlgorithmException {
		User user = validateUser(email);
		if(user != null){
			String activationLink = getUserTokenService().insertFPTokenAndReturnActivationLink(user, contextPath);
			if(activationLink != null){
				getEmailManager().sendForgotPasswordEmail(user, activationLink);
			}
		}
		return false;
	}

	public IUserTokenService getUserTokenService() {
		return userTokenService;
	}

	public IEmailManager getEmailManager() {
		return emailManager;
	}

}
