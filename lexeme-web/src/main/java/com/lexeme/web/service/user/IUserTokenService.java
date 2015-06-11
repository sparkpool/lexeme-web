package com.lexeme.web.service.user;

import java.security.NoSuchAlgorithmException;

import com.lexeme.web.domain.user.User;
import com.lexeme.web.domain.user.UserToken;

public interface IUserTokenService {

	public String insertNewUserTokenAndReturnActivationLink(User user, String contextPath) throws NoSuchAlgorithmException;
	public boolean validateTokenAndDoOperationForAccountActivation(String token);
	public String validateTokenAndDoOperationForFP(String token);
	public String insertFPTokenAndReturnActivationLink(User user, String contextPath) throws NoSuchAlgorithmException;
	public void deleteToken(UserToken userToken);
	public void deleteUserActivationToken(String email);
	public String getExistingUserActivationLink(User user, String contextPath) throws NoSuchAlgorithmException;
}
