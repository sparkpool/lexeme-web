package com.lexeme.web.controller.home;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lexeme.web.controller.user.UserController;

@Controller
public class HomeController {

	private static final Logger logger = Logger.getLogger(UserController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		logger.info("Inside Home Controller");
		return "home";
	}

}
