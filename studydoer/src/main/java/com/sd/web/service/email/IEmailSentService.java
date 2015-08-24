package com.sd.web.service.email;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;

import freemarker.template.TemplateException;

public interface IEmailSentService {

	public void sentEmail(Map<String, Object> values, String toEmail,
			String subject, String ftl) throws IOException, TemplateException,
			MessagingException;

	public void sentEmail(Map<String, Object> values, List<String> toEmails,
			List<String> ccEmails, List<String> bccEmails, String subject,
			String ftl) throws IOException, TemplateException;

	void sentEmail(Map<String, Object> values, String toEmail, String subject,
			String ftl, String replyTo) throws IOException, TemplateException,
			MessagingException;
}
