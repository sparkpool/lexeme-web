package com.sd.web.pojo.feedback;

import org.apache.commons.lang.StringUtils;

public class FeedbackPojo {

	private String email;
	private String subject;
	private String comment;
	private String type;
	
	public boolean validate(){
	  if(StringUtils.isBlank(email) || StringUtils.isBlank(subject) ||
			  StringUtils.isBlank(comment) || StringUtils.isBlank(type)){
		  return false;
	  }
	  return true;
	}
	
	public String getEmail() {
		return email;
	}
	
	@Override
	public String toString() {
		return "FeedbackPojo [email=" + email + ", subject=" + subject
				+ ", comment=" + comment + ", type=" + type + "]";
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
}
