package com.lexeme.web.service.user;

import java.security.NoSuchAlgorithmException;

import com.lexeme.web.domain.user.User;
import com.lexeme.web.pojo.user.UserPojo;

public interface IUserService {

	public UserPojo signupUser(UserPojo userPojo, String contextPath) throws NoSuchAlgorithmException;
	public UserPojo login(UserPojo userPojo) throws NoSuchAlgorithmException;
	public boolean setPassword(String password, String userId) throws NoSuchAlgorithmException;
	public User getUserById(Long userId);
	public void logout();
}
