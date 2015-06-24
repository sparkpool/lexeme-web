package com.lexeme.admin.web.service.impl;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lexeme.admin.web.service.IDocumentAdminService;
import com.lexeme.web.pojo.document.DocumentPojo;
import com.lexeme.web.service.document.impl.DocumentServiceImpl;
import com.lexeme.web.util.PropertiesUtil;

@Service
public class DocumentAdminServiceImpl implements IDocumentAdminService{

	private static final Logger logger = Logger.getLogger(DocumentServiceImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Override
	public List<DocumentPojo> getUnverifiedDocuments(int perPage) {
		List<DocumentPojo> files = new ArrayList<DocumentPojo>();
		String folderPath = PropertiesUtil.getProjectProperty("unverified.prefix");
		File folder = new File(folderPath);
		File[] listOfFiles = folder.listFiles();
		int noOfFiles = 0;
        if(listOfFiles!=null && listOfFiles.length > 0){
        	DocumentPojo document = null;
        	for(File file : listOfFiles){
        		noOfFiles++;
        		if(noOfFiles > perPage){
        			break;
        		}
        		String fullName = file.getName();
        		logger.info("File Name is " + fullName);
        		String[] splitNames = fullName.split("_");
        		document = new DocumentPojo(Long.parseLong(splitNames[0]), splitNames[1]);
        		files.add(document);
        	}
        }
		return files;
	}
	
	
}
