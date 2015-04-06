package com.lexeme.web.controller.user;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lexeme.web.pojo.user.UserPojo;
import com.lexeme.web.service.user.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {

	private static final Logger logger = Logger.getLogger(UserController.class);

	@Autowired
	private IUserService userService;

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup() {
		return "signup";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public ModelAndView signup(UserPojo userPojo) {
		logger.info("User Pojo is : " + userPojo);
		ModelAndView model = new ModelAndView();
		try {
			if (!userPojo.validateLoginParams()) {
				model.addObject("errorMsg", "Please Enter Email And Password");
				model.setViewName("signup");
			} else {
				userPojo = getUserService().signupUser(userPojo);
				if (userPojo != null && userPojo.getId() != null) {
					model.addObject("message",
							"Thanks for SignUp. Please Login to Continue !!");
					model.setViewName("login");
				} else {
					model.setViewName("signup");
					model.addObject("errorMsg",
							"Something Wrong, please try again!!");
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
			if (!userPojo.validateLoginParams()) {
				model.addObject("errorMsg", "Please Enter Email And Password");
				model.setViewName("login");
			} else {
				userPojo = getUserService().signupUser(userPojo);
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

}
