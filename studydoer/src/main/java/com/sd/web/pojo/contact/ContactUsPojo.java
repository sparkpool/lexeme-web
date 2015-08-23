package com.sd.web.pojo.contact;

import org.apache.commons.lang.StringUtils;

public class ContactUsPojo {

	private String email;
	private String name;
	private String phone;
	private String comment;
	private Long reason;
	
	public Long getReason() {
		return reason;
	}

	public void setReason(Long reason) {
		this.reason = reason;
	}

	public boolean validate(){
		if(StringUtils.isBlank(email) || StringUtils.isBlank(name) ||
				StringUtils.isBlank(phone) || StringUtils.isBlank(comment) ||
				reason == null){
			return false;
		}
		return true;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
	
}
