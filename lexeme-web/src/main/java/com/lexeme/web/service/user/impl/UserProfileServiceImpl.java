package com.lexeme.web.service.user.impl;

import java.security.NoSuchAlgorithmException;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lexeme.web.auth.Principal;
import com.lexeme.web.constants.MessageConstants;
import com.lexeme.web.domain.user.User;
import com.lexeme.web.pojo.user.UserChangePassword;
import com.lexeme.web.service.user.IUserProfileService;
import com.lexeme.web.service.user.IUserService;
import com.lexeme.web.util.LexemeUtil;

@Service
public class UserProfileServiceImpl implements IUserProfileService{

	private static final Logger logger = Logger.getLogger(UserProfileServiceImpl.class);
	
	@Autowired
	private IUserService userService; 
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public String validateAndSaveNewPassword(
			UserChangePassword userChangePassword) throws NoSuchAlgorithmException {
		Long userId = getUserIdFromPrincipal();
		logger.info("User Id from Principal is " + userId);
		User user = getUserService().getUserById(userId);
		String password = LexemeUtil.getHashPassword(userChangePassword.getOldPassword(), user.getSalt());
		if(!user.getPassword().equals(password)){
			return MessageConstants.INVALID_OLD_PASSWORD;
		}
		String result = setNewPassword(userChangePassword.getPassword(), user);
		if(StringUtils.isBlank(result)){
			getUserService().logout();
		}
		return null;
	}
	
	private String setNewPassword(String newPassword, User user) throws NoSuchAlgorithmException{
		String salt = LexemeUtil.getSalt();
		user.setSalt(salt);
		String newHashPassword = LexemeUtil.getHashPassword(newPassword, salt);
		user.setPassword(newHashPassword);
		Long id = (Long)getSessionFactory().getCurrentSession().save(user);
		if(id == null){
			return MessageConstants.SOMETHING_WRONG;
		}
		return null;
	}
	
	private Long getUserIdFromPrincipal(){
		Principal principal = (Principal)SecurityUtils.getSubject().getPrincipal();
		return principal.getId();
	}

	public IUserService getUserService() {
		return userService;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

}
