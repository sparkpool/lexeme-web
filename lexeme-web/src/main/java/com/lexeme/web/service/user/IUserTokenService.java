package com.lexeme.web.service.user;

import java.security.NoSuchAlgorithmException;

import com.lexeme.web.domain.user.User;
import com.lexeme.web.enums.EnumTokenType;

public interface IUserTokenService {

	public String insertNewUserTokenAndReturnActivationLink(User user, String contextPath) throws NoSuchAlgorithmException;
	
	public boolean validateTokenAndDoOperation(String token, EnumTokenType enumTokenType);
	
	public String insertFPTokenAndReturnActivationLink(User user, String contextPath) throws NoSuchAlgorithmException;
}
