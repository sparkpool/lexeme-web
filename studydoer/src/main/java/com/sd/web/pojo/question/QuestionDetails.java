package com.sd.web.pojo.question;
import java.util.Date;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.multipart.MultipartFile;

public class QuestionDetails {
	private Long questionId;
	private String subject;
	private Date deadline;
	private double price;
	private String description;
	private MultipartFile file;
	private String additionalInfo;
	
	public boolean validate(){
	  if(questionId == null ||  StringUtils.isBlank(subject) || StringUtils.isBlank(description) || 
			  deadline.before(new Date())){
		  return false;
	  }
	  return true;
	}
	
	public QuestionDetails(MultipartFile file, String description, double price, long questionId,Date deadline ){
		this.file = file;
		this.description = description;
		this.price = price;
		this.questionId = questionId;
		this.deadline = deadline;
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
		QuestionDetails other = (QuestionDetails) obj;
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

	public QuestionDetails(){}
	
	public Long getQuestionId() {
		return questionId;
	}
	public void setQuestionId(Long questionId) {
		this.questionId = questionId;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getAdditionalInfo() {
		return additionalInfo;
	}
	public void setAdditionalInfo(String additionalInfo) {
		this.additionalInfo = additionalInfo;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "QuestionDetails [questionId=" + questionId + ", subject=" + subject
				+ ", deadline=" + deadline + ", price=" + price
				+ ", description=" + description + ", additionalInfo=" + additionalInfo+ "]";
	}
}


