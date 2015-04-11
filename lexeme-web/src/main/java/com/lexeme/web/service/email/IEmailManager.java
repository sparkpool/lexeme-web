package com.lexeme.web.service.email;

import com.lexeme.web.domain.user.User;

public interface IEmailManager {

	public void sendSignUpEmail(User user, String activationLink);
}
