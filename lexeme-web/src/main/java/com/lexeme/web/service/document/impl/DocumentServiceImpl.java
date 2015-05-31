package com.lexeme.web.service.document.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.lexeme.web.service.document.IDocumentService;
import com.lexeme.web.util.FileOperationsUtil;

@Service
public class DocumentServiceImpl implements IDocumentService{

	@Override
	@Transactional
	public void uploadFile(String category, String courseId,
			String description, MultipartFile file) {
		FileOperationsUtil.uploadUnverifiedFile(file, file.getOriginalFilename());
		
	}

}
