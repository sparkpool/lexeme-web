package com.lexeme.web.service.impl.user;

import java.security.InvalidParameterException;
import java.util.Date;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lexeme.web.domain.user.User;
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
		Long id = (Long) sessionFactory.getCurrentSession().save(user);
		if(id!=null){
			userPojo.setId(id);
		}
		return userPojo;
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

}
