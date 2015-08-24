package com.sd.web.pojo.feedback;

import org.apache.commons.lang.StringUtils;

import com.sd.web.constants.MessageConstants;

public class FeedbackPojo {

	private String email;
	private String subject;
	private String comment;
	private Long category;
	
	public boolean validate(){
	  if(StringUtils.isBlank(email) || StringUtils.isBlank(subject) ||
			  StringUtils.isBlank(comment) || null != category){
		  return false;
	  }
	  return true;
	}
	
	public String validateParams(){
		if(subject.length() > 100){
			return MessageConstants.SUBJECT_LENGTH;
		}else if(comment.length() > 250){
			return MessageConstants.COMMENT_LENGTH;
		}
		return null;
	}
	
	public String getEmail() {
		return email;
	}
	
	@Override
	public String toString() {
		return "FeedbackPojo [email=" + email + ", subject=" + subject
				+ ", comment=" + comment + ", type=" + category + "]";
	}

	public void setEmail(String email) {
		this.email = email;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public Long getCategory() {
		return category;
	}
	public void setCategory(Long category) {
		this.category = category;
	}
	
}
