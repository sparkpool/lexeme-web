package com.lexeme.web.pojo.user;

import org.apache.commons.lang.StringUtils;

public class UserContactInfo {

	private String email;
	private String phoneNumber;
	
	public boolean validate(){
		if(StringUtils.isBlank(email) || StringUtils.isBlank(phoneNumber) ||
				phoneNumber.length() < 6 || phoneNumber.length() > 15){
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

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
}
