package com.sd.web.service.contact.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sd.web.pojo.contact.ContactUsPojo;
import com.sd.web.service.contact.IContactService;
import com.sd.web.service.email.IEmailManager;

@Service
public class ContactServiceImpl implements IContactService{

	@Autowired
	private IEmailManager emailManager;

	public IEmailManager getEmailManager() {
		return emailManager;
	}

	@Override
	public void sendContactEmail(ContactUsPojo contactUsPojo) {
		getEmailManager().sendContactUsEmail(contactUsPojo);
	}
	
}
