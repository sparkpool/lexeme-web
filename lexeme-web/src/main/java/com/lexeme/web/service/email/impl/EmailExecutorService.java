package com.lexeme.web.service.email.impl;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

import org.springframework.mail.javamail.JavaMailSender;

import com.lexeme.web.pojo.email.EmailSentPojo;

public class EmailExecutorService {

	private static final Executor EXECUTOR = Executors.newFixedThreadPool(20);
	
	public static void sentEmail(String subject, String content, String toEmail, JavaMailSender mailSender){
		EXECUTOR.execute(new EmailSentPojo(subject, content, toEmail, mailSender));
	}
}
