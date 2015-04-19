package com.lexeme.web.service.user;

import java.security.NoSuchAlgorithmException;

public interface IUserValidationService {

	public String validateUserNameOrEmailForSignUp(String userName, String email);
	
	public boolean validateUserAndFPLink(String userName, String email, String contextPath) throws NoSuchAlgorithmException;
}
