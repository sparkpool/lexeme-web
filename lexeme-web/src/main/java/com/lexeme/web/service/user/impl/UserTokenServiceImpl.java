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
		String paramsHash = getHashOfParams(user, EnumTokenType.UV);
		logger.info("Hash Of Params is " + paramsHash);
		UserToken userToken = getUserTokenPojoFromUser(user, paramsHash, EnumTokenType.UV);
		Long id= (Long)getSessionFactory().getCurrentSession().save(userToken);
        logger.info("Result from DB of User Token is " + id);
		if(id != null){
			return getActivationLink(paramsHash, contextPath, PropertiesUtil.getProjectProperty("activation.email.suffix"));	
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

	private String getActivationLink(String hashOfParams, String contextPath, String linkSuffix) throws NoSuchAlgorithmException{
		String activationLinkPrefix = PropertiesUtil.getProjectProperty("email.prefix");
		StringBuilder strBuilder = new StringBuilder();
		strBuilder.append(activationLinkPrefix).append(contextPath).append(linkSuffix).append(hashOfParams);
		return strBuilder.toString();
	}
	
	private String getHashOfParams(User user, EnumTokenType enumTokenType) throws NoSuchAlgorithmException{
		List<String> params = new ArrayList<String>();
		params.add(user.getEmail());params.add(user.getUserName());
		params.add(enumTokenType.getTokenType());
		return LexemeUtil.createHashOfParameters(params);
	}

	@Override
	@Transactional
	public boolean validateTokenAndDoOperationForAccountActivation(String token) {
		UserToken userToken = validateToken(token, EnumTokenType.UV);
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

	@Override
	public String insertFPTokenAndReturnActivationLink(User user,
			String contextPath) throws NoSuchAlgorithmException {
		String paramsHash = getHashOfParams(user, EnumTokenType.FP);
		logger.info("Hash Of Params is " + paramsHash);
		UserToken userToken = getUserToken(user.getEmail(), EnumTokenType.FP);
		logger.info("User Token from DB is " + userToken);
		if(userToken!=null){
			return getActivationLink(userToken.getToken(), contextPath, PropertiesUtil.getProjectProperty("forgot.password.email.suffix"));
		}
		userToken = getUserTokenPojoFromUser(user, paramsHash, EnumTokenType.FP);
		Long id= (Long)getSessionFactory().getCurrentSession().save(userToken);
        logger.info("Result from DB of User Token is " + id);
		if(id != null){
			return getActivationLink(paramsHash, contextPath, PropertiesUtil.getProjectProperty("forgot.password.email.suffix"));	
		}
		return null;		
	}
	
	private UserToken getUserToken(String email, EnumTokenType enumTokenType){
		Query query = getSessionFactory().getCurrentSession().getNamedQuery("GET.TOKEN")
			.setString("email", email).setLong("tokenTypeId", enumTokenType.getTokenTypeId());
		return (UserToken)query.uniqueResult();
	}

	@Override
	@Transactional
	public String validateTokenAndDoOperationForFP(String token) {
		UserToken userToken = validateToken(token, EnumTokenType.FP);
		logger.info("UserToken from DB is " + userToken);
		if(userToken!=null){
			return userToken.getUser().getId().toString();
		}
		return null;
	}
}
