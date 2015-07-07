package com.sd.web.service.email;

import com.sd.web.domain.user.User;

public interface IEmailManager {

	public void sendSignUpEmail(User user, String activationLink);
	public void sendForgotPasswordEmail(User user, String activationLink);
	public void resendActivationLink(User user, String activationLink);
}
