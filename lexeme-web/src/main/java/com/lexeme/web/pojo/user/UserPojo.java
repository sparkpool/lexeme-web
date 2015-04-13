package com.lexeme.web.pojo.user;

import org.apache.commons.lang.StringUtils;

public class UserPojo {

	private Long id;
	private String email;
	private String password;
	private String userName;
	private String firstName;
	private String middleName;
	private String lastName;
	private String phoneNo;
	private String msg;

	public UserPojo(){}
	
	public UserPojo(String email, String userName, String firstName, String middleName
			, String lastName, String phoneNo, String password){
		this.email = email;
		this.userName = userName;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.phoneNo = phoneNo;
		this.password = password;
	}
	
	public boolean validateSignUpParams(){
		if(StringUtils.isBlank(email) || StringUtils.isBlank(password) || StringUtils.isBlank(userName)){
			return false;
		}
		return true;
	}
	
	public boolean validateLogiInParams(){
		if(StringUtils.isNotBlank(password) && (StringUtils.isNotBlank(email) || StringUtils.isNotBlank(userName))){
			return true;
		}
		return false;
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
	
	@Override
	public String toString() {
		return "UserPojo [id=" + id + ", email=" + email + ", password="
				+ password + ", userName=" + userName + ", firstName="
				+ firstName + ", middleName=" + middleName + ", lastName="
				+ lastName + ", phoneNo=" + phoneNo + "]";
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	
}
