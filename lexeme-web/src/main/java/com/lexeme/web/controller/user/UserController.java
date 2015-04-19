package com.lexeme.web.controller.user;

import javax.servlet.ServletContext;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lexeme.web.constants.MessageConstants;
import com.lexeme.web.enums.EnumTokenType;
import com.lexeme.web.pojo.user.UserPojo;
import com.lexeme.web.service.user.IUserService;
import com.lexeme.web.service.user.IUserTokenService;
import com.lexeme.web.service.user.IUserValidationService;

@Controller
@RequestMapping("/user")
public class UserController {

	private static final Logger logger = Logger.getLogger(UserController.class);

	@Autowired
	private IUserService userService;

	@Autowired
	private IUserValidationService userValidationService;
	
	@Autowired
	private IUserTokenService userTokenService;
	
	@Autowired
	private ServletContext servletContext;
	
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
	
	@RequestMapping(value = "/fp", method = RequestMethod.POST)
	public ModelAndView forgotPassword(@RequestParam("email") String email, @RequestParam("userName") String userName){
	    ModelAndView model = new ModelAndView();
		try {
			boolean bool = getUserValidationService().validateUserAndFPLink(userName, email, getServletContext().getContextPath());
			if(!bool){
				model.addObject("errorMsg", MessageConstants.INVALID_EMAIL_USERNAME);
				model.setViewName("forgotPassword");
			}else{
				model.addObject("msg", MessageConstants.FP_LINK_SEND);
				model.setViewName("login");
			}
		} catch (Exception e) {
			logger.error("Exception occured " + e.getMessage());
			model.addObject("errorMsg",MessageConstants.SOMETHING_WRONG);
			model.setViewName("forgotPassword");
		}
		return model;
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
				logger.info("SignUp Validation using Regex is " + errorMessage);
				if(errorMessage!=null){
					model.addObject("errorMsg", errorMessage);
					model.setViewName("signup");
				}else{
					String validateUser = getUserValidationService().validateUserNameOrEmailForSignUp(userPojo.getUserName(), userPojo.getEmail());
					logger.info("Validate UserName or Email result is " + validateUser);
					if(validateUser!=null){
						model.addObject("errorMsg", validateUser);
						model.setViewName("signup");
					}else{
						userPojo = getUserService().signupUser(userPojo, getServletContext().getContextPath());
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

	@RequestMapping(value = "/act/{actLink}", method = RequestMethod.GET)
	public ModelAndView activateAccount(@PathVariable("actLink") String activationLink){
		ModelAndView model = new ModelAndView();
		model.setViewName("login");
		logger.info("Activation Link is " + activationLink);
		try{
			boolean bool = getUserTokenService().validateTokenAndDoOperation(activationLink, EnumTokenType.UV);
			if(!bool){
				model.addObject("errorMsg",MessageConstants.INVALID_TOKEN);
			}else{
				model.addObject("msg",MessageConstants.ACCOUNT_ACTIVATED);
			}
		}catch(Exception e){
			logger.error("Exception Occured " + e.getMessage());
			model.addObject("errorMsg",MessageConstants.SOMETHING_WRONG);
		}
		return model;
	}
	
	public IUserService getUserService() {
		return userService;
	}

	public IUserValidationService getUserValidationService() {
		return userValidationService;
	}

	public IUserTokenService getUserTokenService() {
		return userTokenService;
	}

	public ServletContext getServletContext() {
		return servletContext;
	}

}
