package com.lexeme.web.service.user;

import com.lexeme.web.pojo.user.UserPojo;

public interface IUserService {

	public UserPojo signupUser(UserPojo userPojo);
	
	public UserPojo login(UserPojo userPojo);
}
