package com.lexeme.web.controller.user;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lexeme.web.constants.MessageConstants;
import com.lexeme.web.pojo.user.UserChangePassword;
import com.lexeme.web.service.user.IUserProfileService;
import com.lexeme.web.to.user.UserTO;

@Controller
@RequestMapping("/profile")
@RequiresRoles("TUTOR,STUDENT,STUDENT_UNVERIFIED,TUTOR_UNVERIFIED")
public class UserProfileController {

	private static final Logger logger = Logger.getLogger(UserProfileController.class);
	
	@Autowired
	private IUserProfileService userProfileService;
	
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public ModelAndView profile(){
		ModelAndView model = new ModelAndView();
		model.setViewName("profile");
		UserTO userTo = null;
		//TODO# Get User Values from DB and then pass model to view
		return model;
	}
	
	@RequestMapping(value = "/changePassword", method = RequestMethod.POST)
	public ModelAndView changePassword(UserChangePassword userChangePassword){
		ModelAndView model = new ModelAndView();
		model.setViewName("profile");
		try{
		if(!userChangePassword.validate()){
			model.addObject("errorMsg", MessageConstants.PASSWORD_MISMATCH_CONFIRMPASSWORD);
		}else if(!userChangePassword.validateOldAndNewPassword()){
			model.addObject("errorMsg", MessageConstants.OLD_NEW_PASSWORD_SAME);
		}else{
			String result = getUserProfileService().validateAndSaveNewPassword(userChangePassword);
			if(StringUtils.isBlank(result)){
				model.addObject("msg",MessageConstants.PASSWORD_CHANGE_SUCCESSFULLY);
				model.setViewName("login");
			}else{
				model.addObject("errorMsg",result);
			}
		}
		}catch(Exception e){
			logger.error("Exception occured : " + e.getMessage());
			model.addObject("errorMsg", MessageConstants.SOMETHING_WRONG);
		}
		return model;
	}

	public IUserProfileService getUserProfileService() {
		return userProfileService;
	}
	
}
