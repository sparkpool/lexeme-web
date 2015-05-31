package com.lexeme.web.service.document;

import org.springframework.web.multipart.MultipartFile;

public interface IDocumentService {

	public void uploadFile(String category, String courseId, String description, MultipartFile file);
}
