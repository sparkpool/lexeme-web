package com.lexeme.web.controller.user;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lexeme.web.constants.MessageConstants;
import com.lexeme.web.pojo.user.UserPojo;
import com.lexeme.web.service.user.IUserService;
import com.lexeme.web.service.user.IUserValidationService;

@Controller
@RequestMapping("/user")
public class UserController {

	private static final Logger logger = Logger.getLogger(UserController.class);

	@Autowired
	private IUserService userService;

	@Autowired
	private IUserValidationService userValidationService;
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup() {
		return "signup";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "/fp", method = RequestMethod.GET)
	public String forgotPassword(){
		return "forgotPassword";
	}
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile(){
		return "profile";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public ModelAndView signup(UserPojo userPojo) {
		logger.info("User Pojo is : " + userPojo);
		ModelAndView model = new ModelAndView();
		try {
			if (!userPojo.validateSignUpParams()) {
				model.addObject("errorMsg", "Please Enter All MAndatory Params");
				model.setViewName("signup");
			} else {
				String errorMessage = userPojo.validateSignUpUsingRegex();
				if(errorMessage!=null){
					model.addObject("errorMsg", errorMessage);
					model.setViewName("signup");
				}else{
					String validateUser = getUserValidationService().validateUserNameOrEmail(userPojo.getUserName(), userPojo.getEmail());
					if(validateUser!=null){
						model.addObject("errorMsg", validateUser);
						model.setViewName("signup");
					}else{
						userPojo = getUserService().signupUser(userPojo);
						if (userPojo != null && userPojo.getId() != null) {
							model.addObject("message",MessageConstants.SIGNUP_SUCCESS);
							model.setViewName("login");
						} else {
							model.setViewName("signup");
							model.addObject("errorMsg",MessageConstants.SOMETHING_WRONG);
						}						
					}
				}
			}
		} catch (Exception e) {
			logger.error("Exception occured : " + e.getMessage());
			model.setViewName("signup");
			model.addObject("errorMsg", "Something Wrong, please try again!!");
		}
		return model;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(UserPojo userPojo) {
		logger.info("User Pojo is : " + userPojo);
		ModelAndView model = new ModelAndView();
		try {
			if (!userPojo.validateLogInParams()) {
				model.addObject("errorMsg", "Please Enter Email Or UserName And Password");
				model.setViewName("login");
			} else {
				userPojo = getUserService().login(userPojo);
				if (userPojo != null && userPojo.getId() != null) {
					model.setViewName("home");
				} else {
					model.setViewName("login");
					model.addObject("errorMsg", userPojo.getMsg());
				}
			}
		} catch (Exception e) {
			model.setViewName("login");
			model.addObject("errorMsg", "Something Wrong, please try again !!");
		}
		return model;
	}

	public IUserService getUserService() {
		return userService;
	}

	public IUserValidationService getUserValidationService() {
		return userValidationService;
	}
	
}
