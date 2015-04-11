package com.lexeme.web.service.email.impl;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfig;

import com.lexeme.web.service.email.IEmailSentService;
import com.lexeme.web.util.PropertiesUtil;

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
	
		String content = getContentFromFTL(values, ftl);
		logger.info("********* posting email ***************");
		sentEmail(subject, content, toEmail);
		logger.info("********* email sent *****************");
	}
	
	private void sentEmail(String subject, String content, String toEmail) throws MessagingException{
		MimeMessage msg = getMailSender().createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(msg,true);
		
		helper.setSubject(subject);
		helper.setText(content,true);
		helper.setFrom(getFromEmailFromProperties());
		helper.setTo(toEmail);
		getMailSender().send(msg);
	}
	
	private String getFromEmailFromProperties(){
		String fromEmail = PropertiesUtil.getProjectProperty("from.email");
		if(fromEmail == null || fromEmail.trim().length() == 0){
			fromEmail = "mail-noreply@lexeme.com";
		}
		return fromEmail;
	}

	@Override
	public void sentEmail(Map<String, Object> values, List<String> toEmails,
			List<String> ccEmails, List<String> bccEmails, String subject,
			String ftl) {
		
	}
	
	private String getContentFromFTL(Map<String, Object> values, String ftlName) throws IOException, TemplateException{
		Template template = getFreemarkerConfig().getConfiguration().getTemplate(ftlName);
		String content = FreeMarkerTemplateUtils.processTemplateIntoString(template, values);
		return content;
	}

	public JavaMailSender getMailSender() {
		return mailSender;
	}

	public FreeMarkerConfig getFreemarkerConfig() {
		return freemarkerConfig;
	}
	
}
