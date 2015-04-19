package com.lexeme.web.service.user;

import java.security.NoSuchAlgorithmException;

import com.lexeme.web.pojo.user.UserPojo;

public interface IUserService {

	public UserPojo signupUser(UserPojo userPojo, String contextPath) throws NoSuchAlgorithmException;
	public UserPojo login(UserPojo userPojo) throws NoSuchAlgorithmException;
}
