package com.lexeme.web.pojo.user;

import org.apache.commons.lang.StringUtils;

import com.lexeme.web.constants.MessageConstants;
import com.lexeme.web.domain.user.User;
import com.lexeme.web.util.LexemeUtil;

public class UserPojo {

	private Long id;
	private String email;
	private String password;
	private String confirmPassword;
	private String userName;
	private String firstName;
	private String middleName;
	private String lastName;
	private String phoneNo;
	private String role;
	private String msg;

	public UserPojo(){}
	
	public UserPojo(User user){
		this.email = user.getEmail();
		this.id = user.getId();
		this.userName = user.getUserName();
		this.firstName = user.getFirstName();
		this.lastName = user.getLastName();
		this.phoneNo = user.getPhoneNo();
		this.middleName = user.getMiddleName();
	}
	
	public boolean validateSignUpParams(){
		if(StringUtils.isBlank(email) || StringUtils.isBlank(password) || StringUtils.isBlank(userName)
				|| StringUtils.isBlank(confirmPassword) || StringUtils.isBlank(role)){
			return false;
		}
		return true;
	}
	
	public String validateSignUpUsingRegex(){
		if(!this.password.equals(this.confirmPassword)){
			return MessageConstants.PASSWORD_MISMATCH_CONFIRMPASSWORD;
		}
		boolean valid = LexemeUtil.validateEmail(this.email);
		if(!valid){
			return MessageConstants.EMAIL_ERROR;
		}
		valid = LexemeUtil.validateUserName(this.userName);
		if(!valid){
			return MessageConstants.USERNAME_ERROR;
		}
		valid = LexemeUtil.validatePassword(this.password);
		if(!valid){
			return MessageConstants.PASSWORD_ERROR;
		}
		return null;
	}
	
	public boolean validateLogInParams(){
		if(StringUtils.isNotBlank(password) && (StringUtils.isNotBlank(email) || StringUtils.isNotBlank(userName))){
			return true;
		}
		return false;
	}
	
	public boolean validateSetPasswordParams(){
		if(StringUtils.isBlank(password) || StringUtils.isBlank(confirmPassword) || 
			 !password.equals(confirmPassword) || !LexemeUtil.validatePassword(this.password)){
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
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	
	@Override
	public String toString() {
		return "UserPojo [id=" + id + ", email=" + email + ", password="
				+ password + ", confirmPassword=" + confirmPassword
				+ ", userName=" + userName + ", firstName=" + firstName
				+ ", middleName=" + middleName + ", lastName=" + lastName
				+ ", phoneNo=" + phoneNo + ", msg=" + msg + "]";
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
}
