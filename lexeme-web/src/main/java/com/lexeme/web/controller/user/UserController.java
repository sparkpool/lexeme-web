package com.lexeme.web.controller.user;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lexeme.web.pojo.user.UserPojo;
import com.lexeme.web.service.user.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {

	private static final Logger logger = Logger.getLogger(UserController.class);
	
	@Autowired
	private IUserService userService;

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup(){
		return "signup";
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signup(UserPojo userPojo){
		System.out.println("User Pojo is : " + userPojo);
		getUserService().signupUser(userPojo);
		return "signup";
	}
	
	public IUserService getUserService() {
		return userService;
	}
	
}
