package com.lexeme.web.pojo.user;

import org.apache.commons.lang.StringUtils;

public class UserProfile {

	private String firstName;
	private String middleName;
	private String lastName;
	private String sex;
	private String dob;
	private String country;
	private String city;
	private String state;
	private String zip;
	private String address;
	
	public boolean validate(){
		if(StringUtils.isBlank(firstName) || StringUtils.isBlank(lastName) || 
				StringUtils.isBlank(sex) || StringUtils.isBlank(dob) || StringUtils.isBlank(country) 
				|| StringUtils.isBlank(city) || StringUtils.isBlank(state) || StringUtils.isBlank(zip) ||
				StringUtils.isBlank(address)){
			return false;
		}
		return true;
	}
	
	public boolean validateParamsLength(){
		if(firstName.length() > 50 || lastName.length() > 50 || (StringUtils.isNotBlank(middleName) && middleName.length() > 50) ||
				sex.length() > 10 || dob.length() > 12 || country.length() > 30 || 
				city.length() > 30 || state.length() > 30 || zip.length() > 18 ||
				address.length() > 100){
			return false;
		}
		return true;
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

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
}
