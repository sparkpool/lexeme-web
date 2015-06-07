package com.lexeme.web.controller.user;

import javax.servlet.ServletContext;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

import com.lexeme.web.constants.MessageConstants;
import com.lexeme.web.pojo.user.UserChangePassword;
import com.lexeme.web.pojo.user.UserContactInfo;
import com.lexeme.web.pojo.user.UserEducation;
import com.lexeme.web.pojo.user.UserExperience;
import com.lexeme.web.pojo.user.UserProfile;
import com.lexeme.web.pojo.user.UserTO;
import com.lexeme.web.service.user.IUserProfileService;
import com.lexeme.web.util.LexemeUtil;

@Controller
@RequestMapping("/profile")
public class UserProfileController {

	private static final Logger logger = Logger
			.getLogger(UserProfileController.class);

	@Autowired
	private IUserProfileService userProfileService;

	@Autowired
	private ServletContext servletContext;

	@RequestMapping(value = "/view", method = RequestMethod.GET)
	@RequiresAuthentication
	public ModelAndView profile() {
		ModelAndView model = new ModelAndView();
		model.setViewName("profile");
		try {
			UserTO userTO = getUserProfileService().getUserDetails();
			model.addObject("userTO", userTO);
		} catch (Exception e) {
			logger.error("Exception occured : " + e.getMessage());
		}
		return model;
	}

	@RequestMapping(value = "/changePassword", method = RequestMethod.POST)
	@RequiresAuthentication
	public ModelAndView changePassword(UserChangePassword userChangePassword) {
		ModelAndView model = new ModelAndView();
		model.setViewName("profile");
		try {
			if (!userChangePassword.validate()) {
				model.addObject("errorMsg",
						MessageConstants.PASSWORD_MISMATCH_CONFIRMPASSWORD);
			} else if (!userChangePassword.validateOldAndNewPassword()) {
				model.addObject("errorMsg",
						MessageConstants.OLD_NEW_PASSWORD_SAME);
			} else {
				String result = getUserProfileService()
						.validateAndSaveNewPassword(userChangePassword);
				if (StringUtils.isBlank(result)) {
					model.addObject("msg",
							MessageConstants.PASSWORD_CHANGE_SUCCESSFULLY);
					model.setViewName("login");
				} else {
					model.addObject("errorMsg", result);
				}
			}
		} catch (Exception e) {
			logger.error("Exception occured : " + e.getMessage());
			model.addObject("errorMsg", MessageConstants.SOMETHING_WRONG);
		}
		return model;
	}

	@RequestMapping(value = "/updateContactInfo", method = RequestMethod.POST, produces = { "text/plain" })
	@ResponseBody
	@RequiresAuthentication
	@ResponseStatus(HttpStatus.OK)
	public String updateUserContactInfo(UserContactInfo userContactInfo) {
		try {
			if (!userContactInfo.validate()) {
				return MessageConstants.INVALID_EMAIL_PHONE_NO;
			} else if (!LexemeUtil.validateEmail(userContactInfo.getEmail())) {
				return MessageConstants.INVALID_EMAIL_FORMAT;
			} else {
				return getUserProfileService().validateAndSaveUserContactInfo(
						userContactInfo, getServletContext().getContextPath());
			}
		} catch (Exception e) {
			logger.error("Exception occured : " + e.getMessage());
			return MessageConstants.SOMETHING_WRONG;
		}
	}

	@RequestMapping(value = "/updateUserProf", method = RequestMethod.POST, produces = { "text/plain" })
	@ResponseBody
	@RequiresAuthentication
	@ResponseStatus(HttpStatus.OK)
	public String updateUserProfileInfo(UserProfile userProfile) {
		try {
			if (!userProfile.validate()) {
				return MessageConstants.MANDATORY_PARAMS;
			} else if (!userProfile.validateParamsLength()) {
				return MessageConstants.MANDATORY_PARAMS_LENGTH;
			} else {
				return getUserProfileService().saveUserProfileData(userProfile);
			}
		} catch (Exception e) {
			logger.error("Exception occured : " + e.getMessage());
			return MessageConstants.SOMETHING_WRONG;
		}
	}

	@RequestMapping(value = "/updateUserEdu", method = RequestMethod.POST, produces = { "text/plain" })
	@ResponseBody
	@RequiresAuthentication
	@ResponseStatus(HttpStatus.OK)
	public String updateUserEducation(UserEducation userEducation) {
		try {
			if (!userEducation.validate()) {
				return MessageConstants.MANDATORY_PARAMS;
			} else if (!userEducation.validateLength()) {
				return MessageConstants.MANDATORY_PARAMS_LENGTH;
			} else {
				return getUserProfileService().saveUserEducationData(
						userEducation);
			}
		} catch (Exception e) {
			logger.error("Exception occured : " + e.getMessage());
			return MessageConstants.SOMETHING_WRONG;
		}
	}

	@RequestMapping(value = "/updateUserExp", method = RequestMethod.POST, produces = { "text/plain" })
	@ResponseBody
	@RequiresAuthentication
	@ResponseStatus(HttpStatus.OK)
	public String updateUserExperience(UserExperience userExperience) {
		try {
			if (!userExperience.validate()) {
				return MessageConstants.MANDATORY_PARAMS;
			} else if (!userExperience.validateLength()) {
				return MessageConstants.MANDATORY_PARAMS_LENGTH;
			} else {
				return getUserProfileService().saveUserExperienceData(
						userExperience);
			}
		} catch (Exception e) {
			logger.error("Exception occured : " + e.getMessage());
			return MessageConstants.SOMETHING_WRONG;
		}
	}

	public IUserProfileService getUserProfileService() {
		return userProfileService;
	}

	public ServletContext getServletContext() {
		return servletContext;
	}

}
