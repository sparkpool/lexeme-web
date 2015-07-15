package com.sd.web.controller.feedback;

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
@RequestMapping("/feedback/")
public class FeedbackController {

	private static final Logger logger = Logger
			.getLogger(FeedbackController.class);

	@Autowired
	private IUserService userService;

	public IUserService getUserService() {
		return userService;
	}

	@RequestMapping(value = "/overall", method = RequestMethod.GET)
	public ModelAndView feedbackOverall() {
		ModelAndView model = new ModelAndView();
		model.setViewName("feedback");
		String email = getUserService().getEmailFromPrincipal();
		if (StringUtils.isNotBlank(email)) {
			model.addObject("email", email);
		}
		return model;
	}

	@RequestMapping(value = "/overall", method = RequestMethod.POST)
	public ModelAndView feedbackOverall(FeedbackPojo feedbackPojo) {
		ModelAndView model = new ModelAndView();
		model.setViewName("feedback");
		try {
			logger.info("Feedback request is " + feedbackPojo);
			if (!feedbackPojo.validate()) {
				model.addObject("errorMsg", MessageConstants.MANDATORY_PARAMS);
			} else {
				//TODO# Save Feedback into DB
				model.addObject("msg", MessageConstants.FEEDBACK_SUCCESS);
			}
		} catch (Exception e) {
			logger.error("Exception occured : " + e.getMessage());
			model.addObject("errorMsg", MessageConstants.SOMETHING_WRONG);
		}
		return model;
	}
}
