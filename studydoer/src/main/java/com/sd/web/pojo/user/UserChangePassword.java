package com.sd.web.pojo.user;

import org.apache.commons.lang.StringUtils;

public class UserChangePassword {

	private String oldPassword;
	private String password;
	private String confirmPassword;
	
	public boolean validate(){
	  if(StringUtils.isBlank(oldPassword) || StringUtils.isBlank(password) ||
			  StringUtils.isBlank(confirmPassword) || !password.equals(confirmPassword)){
		  return false;
	  }
	  return true;
	}
	
	public boolean validateOldAndNewPassword(){
		if(oldPassword.equals(password)){
			  return false;
		  }
		return true;
	}
	
	public String getOldPassword() {
		return oldPassword;
	}
	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	
}
