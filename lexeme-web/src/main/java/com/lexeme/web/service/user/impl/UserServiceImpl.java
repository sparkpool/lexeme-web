package com.lexeme.web.service.user.impl;

import java.security.InvalidParameterException;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lexeme.web.domain.acl.Roles;
import com.lexeme.web.domain.user.User;
import com.lexeme.web.enums.EnumRoles;
import com.lexeme.web.pojo.user.UserPojo;
import com.lexeme.web.service.user.IUserService;
import com.lexeme.web.util.LexemeUtil;

@Service
public class UserServiceImpl implements IUserService{

	private static final Logger logger = Logger.getLogger(UserServiceImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public UserPojo signupUser(UserPojo userPojo) {
		if(userPojo == null){
			throw new InvalidParameterException("USER POJO CAN NOT BE NULL");
		}
		User user = createUserFromPojo(userPojo);
		String password = getHashPassword(userPojo.getPassword());
		if(password == null){
			throw new InvalidParameterException("INVALID PASSWORD");
		}
		user.setPassword(password);
		setRolesOnSignUp(user);
		Long id = (Long) sessionFactory.getCurrentSession().save(user);
		if(id!=null){
			userPojo.setId(id);
		}
		return userPojo;
	}
	
	@Transactional
	private void setRolesOnSignUp(User user){
		Set<Roles> roles = new HashSet<Roles>();
		Query query = getSessionFactory().getCurrentSession().getNamedQuery("ROLE.NAME")
				.setString("name", EnumRoles.STUDENT.getRole());
		Roles role = (Roles)query.uniqueResult();
		logger.info("Role from DB is " + role);
		roles.add(role);				
		user.setRoles(roles);
	}
	
	private String getHashPassword(String password){
		String hashPassword = null;
		try{
		 hashPassword = LexemeUtil.getHashOfString(password);
		}catch(Exception e){
			logger.error("Excepion Occured " + e.getMessage());
		}
		return hashPassword;
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
	public UserPojo login(UserPojo userPojo) {
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

}
