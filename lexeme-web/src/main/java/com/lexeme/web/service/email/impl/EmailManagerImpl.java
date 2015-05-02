package com.lexeme.web.service.email.impl;

import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lexeme.web.domain.user.User;
import com.lexeme.web.service.email.IEmailManager;
import com.lexeme.web.service.email.IEmailSentService;
import com.lexeme.web.util.PropertiesUtil;

@Service
public class EmailManagerImpl implements IEmailManager{

	private static final Logger logger = Logger.getLogger(EmailManagerImpl.class);
	
	@Autowired
	private IEmailSentService emailSentService;

	
	public IEmailSentService getEmailSentService() {
		return emailSentService;
	}

	@Override
	public void sendSignUpEmail(User user, String activationLink) {
        try {
    		Map<String, Object> values = new HashMap<String, Object>();
    		values.put("userName", user.getUserName());
    		values.put("activationLink", activationLink);
    		values.put("emailAddress", user.getEmail());

			getEmailSentService().sentEmail(values, user.getEmail(), getSignUpSubjectFromProperties(), "SignUp");
		} catch (Exception e) {
			logger.error("Exception occured during sending email " + e.getMessage());
		}		
	}

	private String getSignUpSubjectFromProperties(){
		String subject = PropertiesUtil.getProjectProperty("signup.subject");
		if(subject == null || subject.trim().length() == 0){
			subject = "Welcome to Lexeme Family !!";
		}
		return subject;
	}

	@Override
	public void sendForgotPasswordEmail(User user, String activationLink){
		try{
			Map<String, Object> values = new HashMap<String, Object>();
			values.put("userName", user.getUserName());
    		values.put("activationLink", activationLink);
    		
    		getEmailSentService().sentEmail(values, user.getEmail(), getFPSubjectFromProperties(),"ForgotPassword");
		}catch(Exception e){
			logger.error("Exception occured during sending email " + e.getMessage());
		}
	}
	
	private String getFPSubjectFromProperties(){
		String subject = PropertiesUtil.getProjectProperty("forgot.password.subject");
		if(subject == null || subject.trim().length() == 0){
			subject = "Reset Your Password";
		}
		return subject;
	}
}
