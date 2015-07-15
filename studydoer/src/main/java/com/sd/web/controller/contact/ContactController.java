package com.sd.web.controller.contact;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sd.web.constants.MessageConstants;
import com.sd.web.pojo.feedback.FeedbackPojo;
import com.sd.web.service.user.IUserService;

@Controller
public class ContactController {

	private static final Logger logger = Logger.getLogger(ContactController.class);
	
	@Autowired
	private IUserService userService;
	
	@RequestMapping(value = "/contactUs", method = RequestMethod.GET)
	public ModelAndView contactUs() {
		ModelAndView model = new ModelAndView();
		model.setViewName("contactUs");
		String email = getUserService().getEmailFromPrincipal();
		if (StringUtils.isNotBlank(email)) {
			model.addObject("email", email);
		}
		return model;
	}

	@RequestMapping(value = "/contactUs", method = RequestMethod.POST)
	public ModelAndView contactUs(FeedbackPojo feedbackPojo) {
		ModelAndView model = new ModelAndView();
		model.setViewName("contactUs");
		try {
			logger.info("ContactUs request is " + feedbackPojo);
			if (!feedbackPojo.validate()) {
				model.addObject("errorMsg", MessageConstants.MANDATORY_PARAMS);
			} else {
				//TODO# Send Email to both User and Admin
				//TODO# Make sure Email FTL must be ready
				model.addObject("msg", MessageConstants.CONTACT_US);
			}
		} catch (Exception e) {
			logger.error("Exception occured : " + e.getMessage());
			model.addObject("errorMsg", MessageConstants.SOMETHING_WRONG);
		}
		return model;
	}
	
	public IUserService getUserService() {
		return userService;
	}
}
