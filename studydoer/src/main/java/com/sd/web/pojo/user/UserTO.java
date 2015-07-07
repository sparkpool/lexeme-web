package com.sd.web.pojo.user;

public class UserTO {

	private UserEducation userEducation;
	private UserProfile userProfile;
	private UserExperience userExperience;
	private UserContactInfo userContactInfo;
	
	public UserEducation getUserEducation() {
		return userEducation;
	}
	public void setUserEducation(UserEducation userEducation) {
		this.userEducation = userEducation;
	}
	public UserProfile getUserProfile() {
		return userProfile;
	}
	public void setUserProfile(UserProfile userProfile) {
		this.userProfile = userProfile;
	}
	public UserExperience getUserExperience() {
		return userExperience;
	}
	public void setUserExperience(UserExperience userExperience) {
		this.userExperience = userExperience;
	}
	public UserContactInfo getUserContactInfo() {
		return userContactInfo;
	}
	public void setUserContactInfo(UserContactInfo userContactInfo) {
		this.userContactInfo = userContactInfo;
	}
	
	
}
