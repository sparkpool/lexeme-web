package com.lexeme.web.service.user;

import java.security.NoSuchAlgorithmException;

import com.lexeme.web.pojo.user.UserChangePassword;
import com.lexeme.web.pojo.user.UserContactInfo;
import com.lexeme.web.pojo.user.UserEducation;
import com.lexeme.web.pojo.user.UserExperience;
import com.lexeme.web.pojo.user.UserProfile;

public interface IUserProfileService {

	public String validateAndSaveNewPassword(UserChangePassword userChangePassword) throws NoSuchAlgorithmException;
	public String validateAndSaveUserContactInfo(UserContactInfo userContactInfo);
	public String saveUserProfileData(UserProfile userProfile);
	public String saveUserEducationData(UserEducation userEducation);
	public String saveUserExperienceData(UserExperience userExperience);
}
