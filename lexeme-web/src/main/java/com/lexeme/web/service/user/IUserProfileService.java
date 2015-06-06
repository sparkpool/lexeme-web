package com.lexeme.web.service.user;

import java.security.NoSuchAlgorithmException;

import com.lexeme.web.pojo.user.UserChangePassword;

public interface IUserProfileService {

	public String validateAndSaveNewPassword(UserChangePassword userChangePassword) throws NoSuchAlgorithmException;
}
