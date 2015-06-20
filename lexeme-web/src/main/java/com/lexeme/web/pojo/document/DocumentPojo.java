package com.lexeme.web.pojo.document;

import org.springframework.web.multipart.MultipartFile;

public class DocumentPojo {

	private Long documentId;
	private String name;
	private String courseID;
	private String category;
	private String description;
	private MultipartFile file;
	
	public DocumentPojo(MultipartFile file, String description, String category, String courseId){
		this.file = file;
		this.description = description;
		this.category = category;
		this.courseID = courseId;
	}
	
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public DocumentPojo(){}
	
	public Long getDocumentId() {
		return documentId;
	}
	public void setDocumentId(Long documentId) {
		this.documentId = documentId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCourseID() {
		return courseID;
	}
	public void setCourseID(String courseID) {
		this.courseID = courseID;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
}
