package com.lexeme.web.service.user;

import java.security.NoSuchAlgorithmException;

import com.lexeme.web.domain.user.User;

public interface IUserValidationService {

	public String validateUserNameOrEmailForSignUp(String userName, String email);
	
	public boolean validateUserAndFPLink(String email, String contextPath) throws NoSuchAlgorithmException;
	
	public User validateUserName(String userName);

	public User validateUser(String email);
}
