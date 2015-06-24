package com.lexeme.admin.web.service;

import java.util.List;

import com.lexeme.web.pojo.document.DocumentPojo;

public interface IDocumentAdminService {

	public List<DocumentPojo> getUnverifiedDocuments(int perPage);
}
