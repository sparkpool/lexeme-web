package com.sd.admin.web.service;

import java.util.List;

import com.sd.web.domain.document.DocumentDB;
import com.sd.web.pojo.document.DocumentPojo;

public interface IDocumentAdminService {

	public List<DocumentPojo> getUnverifiedDocuments(int perPage);
	public String deleteDocument(Long documentId);
	public DocumentPojo getDocumentFromDocumentId(Long documentId);
	public String saveDocument(DocumentPojo documentPojo);
	public DocumentDB getDocumentById(Long documentId);
}
