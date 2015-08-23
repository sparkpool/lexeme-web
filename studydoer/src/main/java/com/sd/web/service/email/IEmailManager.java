package com.sd.web.service.email;

import com.sd.web.domain.user.User;
import com.sd.web.pojo.feedback.FeedbackPojo;

public interface IEmailManager {

	public void sendSignUpEmail(User user, String activationLink);
	public void sendForgotPasswordEmail(User user, String activationLink);
	public void resendActivationLink(User user, String activationLink);
	public void sendFeedbackEmail(String email, String userName, FeedbackPojo feedbackPojo);
}
