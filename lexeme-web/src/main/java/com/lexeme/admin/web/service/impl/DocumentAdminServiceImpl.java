package com.lexeme.admin.web.service.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lexeme.admin.web.service.IDocumentAdminService;

@Service
public class DocumentAdminServiceImpl implements IDocumentAdminService{

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	
	
}
