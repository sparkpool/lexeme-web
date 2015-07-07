package com.sd.web.pojo.email;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.apache.log4j.Logger;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import com.sd.web.util.PropertiesUtil;

public class EmailSentPojo implements Runnable{

	private static final Logger logger = Logger.getLogger(EmailSentPojo.class);
	
	private String subject;
	private String content;
	private String toEmail;
	private JavaMailSender mailSender;
	
	public EmailSentPojo(String subject, String content, String toEmail, JavaMailSender mailSender) {
		this.subject = subject;
		this.content = content;
		this.toEmail = toEmail;
		this.mailSender = mailSender;
	}
	
	@Override
	public void run() {
		logger.info("********* posting email ***************");
		try {
			MimeMessage msg = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(msg,true);
			logger.info("Content of the email to sent is " + content);
			helper.setSubject(subject);
			helper.setText(content,true);
			helper.setFrom(getFromEmailFromProperties());
			helper.setTo(toEmail);
			mailSender.send(msg);
		} catch (MessagingException e) {
			logger.error("Exception occured during sending email " + e.getMessage());
		}
		logger.info("********* email sent *****************");		
	}

	private String getFromEmailFromProperties(){
		String fromEmail = PropertiesUtil.getProjectProperty("from.email");
		if(fromEmail == null || fromEmail.trim().length() == 0){
			fromEmail = "no-reply@lexeme.com";
		}
		return fromEmail;
	}
	
}
