package com.lexeme.web.service.user.impl;

import java.security.InvalidParameterException;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.Set;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lexeme.web.domain.acl.Roles;
import com.lexeme.web.domain.user.User;
import com.lexeme.web.pojo.user.UserPojo;
import com.lexeme.web.service.acl.IACLService;
import com.lexeme.web.service.email.IEmailManager;
import com.lexeme.web.service.user.IUserService;
import com.lexeme.web.service.user.IUserTokenService;
import com.lexeme.web.util.LexemeUtil;

@Service
public class UserServiceImpl implements IUserService{

	private static final Logger logger = Logger.getLogger(UserServiceImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	private IACLService aclService;

	@Autowired
	private IEmailManager emailManager;
	
	@Autowired
	private IUserTokenService userTokenService;
	
	@Override
	@Transactional
	public UserPojo signupUser(UserPojo userPojo) throws NoSuchAlgorithmException {
		if(userPojo == null){
			throw new InvalidParameterException("USER POJO CAN NOT BE NULL");
		}
		User user = createUserFromPojo(userPojo);
		String password = getHashPassword(userPojo.getPassword());
		user.setPassword(password);
		user.setRoles(getRolesForSignUp());
		Long id = (Long) sessionFactory.getCurrentSession().save(user);
		logger.info("Sign Up Of user from DB result is " + id);
		if(id!=null){
			userPojo.setId(id);
			user.setId(id);
			getEmailManager().sendSignUpEmail(user, getUserTokenService().insertUserTokenAndReturnActivationLink(user));
		}
		return userPojo;
	}
	
	private Set<Roles> getRolesForSignUp(){
		Set<Roles> roles = getAclService().getRolesForSignUp();
		if(roles == null || roles.size() == 0){
			throw new InvalidParameterException("INVALID ROLE FROM DB");
		}
		return roles;
	}
	
	private String getHashPassword(String password) throws NoSuchAlgorithmException{
		return LexemeUtil.getHashOfString(password);
	}
	
	private User createUserFromPojo(UserPojo userPojo){
		User user = new User();
		user.setEmail(userPojo.getEmail());
		user.setUserName(userPojo.getUserName());
		user.setCreateDt(new Date());
		return user;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Override
	@Transactional
	public UserPojo login(UserPojo userPojo) throws NoSuchAlgorithmException {
		if(userPojo == null){
			throw new InvalidParameterException("USER POJO CAN NOT BE NULL");
		}
		String password = getHashPassword(userPojo.getPassword());
		
		Query query = getSessionFactory().getCurrentSession().getNamedQuery("USER.LOGIN")
		.setString("email", userPojo.getEmail()).setString("password", password);
		
		User user = (User) query.uniqueResult();
		if(user!=null && user.getId()!=null){
			userPojo.setId(user.getId());
		}else{
			userPojo.setMsg("Invalid Email Or Password");
		}
		return userPojo;
	}

	public IACLService getAclService() {
		return aclService;
	}

	public IEmailManager getEmailManager() {
		return emailManager;
	}

	public IUserTokenService getUserTokenService() {
		return userTokenService;
	}

}
