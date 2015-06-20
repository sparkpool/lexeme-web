package com.lexeme.web.pojo.document;

import org.springframework.web.multipart.MultipartFile;

public class DocumentUploadPojo {

	private String courseID;
	private String category;
	private String description;
    private MultipartFile file;
    
    public DocumentUploadPojo(MultipartFile file, String courseID, String description, String category){
    	this.file = file;
    	this.courseID = courseID;
    	this.description = description;
    	this.category = category;
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

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	@Override
	public String toString() {
		return "DocumentUploadPojo [courseID=" + courseID + ", category="
				+ category + ", description=" + description + ", file=" + file
				+ "]";
	}

}
