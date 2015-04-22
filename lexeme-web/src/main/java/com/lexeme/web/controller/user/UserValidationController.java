package com.lexeme.web.controller.user;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lexeme.web.constants.MessageConstants;
import com.lexeme.web.service.user.IUserValidationService;

@Controller
@RequestMapping("/validate")
public class UserValidationController {

	private static final Logger logger = Logger
			.getLogger(UserValidationController.class);

	@Autowired
	private IUserValidationService userValidationService;
	
	@RequestMapping(value = "/user", method = RequestMethod.GET)
	@ResponseBody
	public String signup(@RequestParam("email") String email,
			@RequestParam("userName") String userName) {
		try {
			if (StringUtils.isBlank(email) && StringUtils.isBlank(userName)) {
				return MessageConstants.INVALID_USERNAME_EMAIL;
			}
			return getUserValidationService().validateUserNameOrEmailForSignUp(userName, email);
		} catch (Exception e) {
			logger.error("Exception Occured : " + e.getMessage());
			return e.getMessage();
		}
	}

	public IUserValidationService getUserValidationService() {
		return userValidationService;
	}
	
}