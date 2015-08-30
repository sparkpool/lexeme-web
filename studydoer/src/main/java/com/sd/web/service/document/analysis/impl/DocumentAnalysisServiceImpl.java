package com.sd.web.service.document.analysis.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sd.web.service.document.analysis.IDocumentAnalysisService;

@Service
public class DocumentAnalysisServiceImpl implements IDocumentAnalysisService{

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Override
	public boolean updateDocumentLikes(Long documentId) {
		return false;
	}
	
	
}
