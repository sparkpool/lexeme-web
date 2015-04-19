package com.lexeme.web.service.user.impl;

import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lexeme.web.domain.user.User;
import com.lexeme.web.domain.user.UserToken;
import com.lexeme.web.enums.EnumTokenType;
import com.lexeme.web.service.acl.IACLService;
import com.lexeme.web.service.user.IUserTokenService;
import com.lexeme.web.util.LexemeUtil;
import com.lexeme.web.util.PropertiesUtil;

@Service
public class UserTokenServiceImpl implements IUserTokenService{

	private static final Logger logger = Logger.getLogger(UserTokenServiceImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private IACLService aclService;
	
	@Override
    public String insertNewUserTokenAndReturnActivationLink(User user, String contextPath) throws NoSuchAlgorithmException{
		logger.info("Inside Insert User Token And Return Activation Link");
		String paramsHash = getHashOfParams(user);
		logger.info("Hash Of Params is " + paramsHash);
		UserToken userToken = getUserTokenPojoFromUser(user, paramsHash, EnumTokenType.UV);
		Long id= (Long)getSessionFactory().getCurrentSession().save(userToken);
        logger.info("Result from DB of User Token is " + id);
		if(id != null){
			return getActivationLink(paramsHash, contextPath);	
		}
		return null;
	}
    
    private UserToken getUserTokenPojoFromUser(User user, String token, EnumTokenType enumTokenType){
    	UserToken userToken = new UserToken();
		userToken.setUser(user);
		userToken.setCreateDt(new Date());
		userToken.setToken(token);
		userToken.setTokenTypeId(enumTokenType.getTokenTypeId());
		return userToken;
    }

	private String getActivationLink(String hashOfParams, String contextPath) throws NoSuchAlgorithmException{
		String activationLinkPrefix = PropertiesUtil.getProjectProperty("activation.email.prefix");
		String activationLinkSuffix = PropertiesUtil.getProjectProperty("activation.email.suffix");
		StringBuilder strBuilder = new StringBuilder();
		strBuilder.append(activationLinkPrefix).append(contextPath).append(activationLinkSuffix).append(hashOfParams);
		return strBuilder.toString();
	}
	
	private String getHashOfParams(User user) throws NoSuchAlgorithmException{
		List<String> params = new ArrayList<String>();
		params.add(user.getEmail());params.add(user.getUserName());
		params.add(EnumTokenType.UV.getTokenType());
		return LexemeUtil.createHashOfParameters(params);
	}

	@Override
	@Transactional
	public boolean validateTokenAndDoOperation(String token,
			EnumTokenType enumTokenType) {
		UserToken userToken = validateToken(token, enumTokenType);
		logger.info("UserToken from DB is " + userToken);
		if(userToken != null){
		    getAclService().makeUserVerified(userToken.getUser());
		    deleteToken(userToken);
		    return true;
		}
		return false;
	}
	
	private void deleteToken(UserToken userToken){
		getSessionFactory().getCurrentSession().delete(userToken);
	}
	
	private UserToken validateToken(String token, EnumTokenType enumTokenType){
		Query query = getSessionFactory().getCurrentSession().getNamedQuery("TOKEN.VALIDATE").setString("token", token).setLong("tokenTypeId", enumTokenType.getTokenTypeId());
		return (UserToken)query.uniqueResult();
	}
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public IACLService getAclService() {
		return aclService;
	}

	//TODO# Check if already FP Link is present or not
	@Override
	public String insertFPTokenAndReturnActivationLink(User user,
			String contextPath) throws NoSuchAlgorithmException {
		String paramsHash = getHashOfParams(user);
		logger.info("Hash Of Params is " + paramsHash);
		UserToken userToken = getUserTokenPojoFromUser(user, paramsHash, EnumTokenType.FP);
		Long id= (Long)getSessionFactory().getCurrentSession().save(userToken);
        logger.info("Result from DB of User Token is " + id);
		if(id != null){
			return getActivationLink(paramsHash, contextPath);	
		}
		return null;		
	}
	
}
