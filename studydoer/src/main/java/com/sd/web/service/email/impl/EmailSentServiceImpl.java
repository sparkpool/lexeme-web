package com.sd.web.service.email.impl;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfig;

import com.sd.web.service.email.IEmailSentService;

import freemarker.template.Template;
import freemarker.template.TemplateException;

@Service
public class EmailSentServiceImpl implements IEmailSentService{

	private static final Logger logger = Logger.getLogger(EmailSentServiceImpl.class);
	
	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private FreeMarkerConfig freemarkerConfig; 
	
	@Override
	public void sentEmail(Map<String, Object> values, String toEmail,
			String subject, String ftl) throws IOException, TemplateException, MessagingException {
		logger.info("Inside Sent Email");
		String content = getContentFromFTL(values, ftl);
		sentEmail(subject, content, toEmail);
	}
	
	private void sentEmail(String subject, String content, String toEmail) throws MessagingException{
		EmailExecutorService.sentEmail(subject, content, toEmail, getMailSender());
	}
	
	@Override
	public void sentEmail(Map<String, Object> values, List<String> toEmails,
			List<String> ccEmails, List<String> bccEmails, String subject,
			String ftl) {
		
	}
	
	private String getContentFromFTL(Map<String, Object> values, String ftlName) throws IOException, TemplateException{
		Template template = getFreemarkerConfig().getConfiguration().getTemplate(getAbsoluteFTL(ftlName));
		String content = FreeMarkerTemplateUtils.processTemplateIntoString(template, values);
		return content;
	}
	
	private String getAbsoluteFTL(String ftlName){
		return new StringBuilder(ftlName).append(".ftl").toString();
	}

	public JavaMailSender getMailSender() {
		return mailSender;
	}

	public FreeMarkerConfig getFreemarkerConfig() {
		return freemarkerConfig;
	}
	
}
