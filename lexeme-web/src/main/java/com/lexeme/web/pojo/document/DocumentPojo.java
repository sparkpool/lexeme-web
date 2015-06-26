package com.lexeme.web.pojo.document;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.multipart.MultipartFile;

public class DocumentPojo {

	private Long documentId;
	private String name;
	private String courseID;
	private String category;
	private String description;
	private MultipartFile file;
	
	public boolean validate(){
	  if(documentId == null ||  StringUtils.isBlank(category) || StringUtils.isBlank(description) || 
			  StringUtils.isBlank(name)){
		  return false;
	  }
	  return true;
	}
	
	public DocumentPojo(MultipartFile file, String description, String category, String courseId){
		this.file = file;
		this.description = description;
		this.category = category;
		this.courseID = courseId;
	}
	
	public DocumentPojo(Long documentId, String name){
		this.documentId = documentId;
		this.name = name;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((file.getOriginalFilename() == null) ? 0 : file.getOriginalFilename().hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		DocumentPojo other = (DocumentPojo) obj;
		if (file == null) {
			if (other.file != null)
				return false;
		} else if (!file.getOriginalFilename().equals(other.file.getOriginalFilename()))
			return false;
		return true;
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

	@Override
	public String toString() {
		return "DocumentPojo [documentId=" + documentId + ", name=" + name
				+ ", courseID=" + courseID + ", category=" + category
				+ ", description=" + description + "]";
	}
	
}
