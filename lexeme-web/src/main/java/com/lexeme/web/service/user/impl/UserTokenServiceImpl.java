package com.lexeme.web.service.user.impl;

import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lexeme.web.domain.user.User;
import com.lexeme.web.domain.user.UserToken;
import com.lexeme.web.enums.EnumTokenType;
import com.lexeme.web.service.user.IUserTokenService;
import com.lexeme.web.util.LexemeUtil;
import com.lexeme.web.util.PropertiesUtil;

@Service
public class UserTokenServiceImpl implements IUserTokenService{

	private static final Logger logger = Logger.getLogger(UserTokenServiceImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;
	
    public String insertUserTokenAndReturnActivationLink(User user) throws NoSuchAlgorithmException{
		logger.info("Inside Insert User Token And Return Activation Link");
		String paramsHash = getHashOfParams(user);
		logger.info("Hash Of Params is " + paramsHash);
		UserToken userToken = getUserTokenFromUserForSignUp(user);
		Long id= (Long)getSessionFactory().getCurrentSession().save(userToken);
        logger.info("Result from DB of User Token is " + id);
		if(id != null){
			return getActivationLink(paramsHash);	
		}
		return null;
	}
    
    private UserToken getUserTokenFromUserForSignUp(User user){
    	UserToken userToken = new UserToken();
		userToken.setUser(user);
		userToken.setCreateDt(new Date());
		userToken.setTokenTypeId(EnumTokenType.UV.getTokenTypeId());
		return userToken;
    }

	private String getActivationLink(String hashOfParams) throws NoSuchAlgorithmException{
		String activationLinkPrefix = PropertiesUtil.getProjectProperty("activation.email.prefix");
		StringBuilder strBuilder = new StringBuilder();
		strBuilder.append(activationLinkPrefix).append(hashOfParams);
		return strBuilder.toString();
	}
	
	private String getHashOfParams(User user) throws NoSuchAlgorithmException{
		List<String> params = new ArrayList<String>();
		params.add(user.getEmail());params.add(user.getUserName());
		params.add(EnumTokenType.UV.getTokenType());
		return LexemeUtil.createHashOfParameters(params);
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	
}
