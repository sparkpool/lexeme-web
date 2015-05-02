package com.lexeme.web.service.email;

import com.lexeme.web.domain.user.User;

public interface IEmailManager {

	public void sendSignUpEmail(User user, String activationLink);
	
	public void sendForgotPasswordEmail(User user, String activationLink);
}
