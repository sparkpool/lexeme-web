package com.lexeme.web.service.user.impl;

import java.security.NoSuchAlgorithmException;
import java.util.Set;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lexeme.web.auth.Principal;
import com.lexeme.web.constants.MessageConstants;
import com.lexeme.web.domain.acl.Roles;
import com.lexeme.web.domain.user.User;
import com.lexeme.web.domain.user.UserEdu;
import com.lexeme.web.domain.user.UserExp;
import com.lexeme.web.domain.user.UserProf;
import com.lexeme.web.enums.EnumRoles;
import com.lexeme.web.pojo.user.UserChangePassword;
import com.lexeme.web.pojo.user.UserContactInfo;
import com.lexeme.web.pojo.user.UserEducation;
import com.lexeme.web.pojo.user.UserExperience;
import com.lexeme.web.pojo.user.UserProfile;
import com.lexeme.web.pojo.user.UserTO;
import com.lexeme.web.service.acl.IACLService;
import com.lexeme.web.service.email.IEmailManager;
import com.lexeme.web.service.user.IUserProfileService;
import com.lexeme.web.service.user.IUserService;
import com.lexeme.web.service.user.IUserTokenService;
import com.lexeme.web.util.LexemeUtil;

@Service
public class UserProfileServiceImpl implements IUserProfileService{

	private static final Logger logger = Logger.getLogger(UserProfileServiceImpl.class);
	
	@Autowired
	private IUserService userService; 
	
	@Autowired
	private IACLService aclService;
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private IUserTokenService userTokenService;
	
	@Autowired
	private IEmailManager emailManager;
	
	@Override
	@Transactional
	public String validateAndSaveNewPassword(
			UserChangePassword userChangePassword) throws NoSuchAlgorithmException {
		Long userId = getUserIdFromPrincipal();
		logger.info("User Id from Principal is " + userId);
		if(userId == null){
			return MessageConstants.INVALID_LOGIN_SESSION;
		}
		User user = getUserService().getUserById(userId);
		String password = LexemeUtil.getHashPassword(userChangePassword.getOldPassword(), user.getSalt());
		if(!user.getPassword().equals(password)){
			return MessageConstants.INVALID_OLD_PASSWORD;
		}
		String result = setNewPassword(userChangePassword.getPassword(), user);
		if(StringUtils.isBlank(result)){
			getUserService().logout();
		}
		return null;
	}
	
	private String setNewPassword(String newPassword, User user) throws NoSuchAlgorithmException{
		String salt = LexemeUtil.getSalt();
		user.setSalt(salt);
		String newHashPassword = LexemeUtil.getHashPassword(newPassword, salt);
		user.setPassword(newHashPassword);
		Long id = (Long)getSessionFactory().getCurrentSession().save(user);
		if(id == null){
			return MessageConstants.SOMETHING_WRONG;
		}
		return null;
	}
	
	private Long getUserIdFromPrincipal(){
		if(SecurityUtils.getSubject().isAuthenticated()){
			Principal principal = (Principal)SecurityUtils.getSubject().getPrincipal();
			return principal.getId();	
		}
		return null;
	}

	public IUserService getUserService() {
		return userService;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Override
	@Transactional
	public String validateAndSaveUserContactInfo(UserContactInfo userContactInfo, String contextPath) {
		String email = getEmailFromPrincipal();
		logger.info("Email from Principal is " + email);
		if(StringUtils.isBlank(email)){
			return MessageConstants.INVALID_LOGIN_SESSION;
		}
		return saveUserContactInfoIntoDB(userContactInfo, contextPath);
	}
	
	private String saveUserContactInfoIntoDB(UserContactInfo userContactInfo, String contextPath){
		Long userId = getUserIdFromPrincipal();
		User user = getUserService().getUserById(userId);
		boolean emailChange = false;
		boolean phoneChange = false;
		if(user!=null){
			if(!userContactInfo.getPhoneNumber().equals(user.getPhoneNo())){
				user.setPhoneNo(userContactInfo.getPhoneNumber());
				phoneChange = true;
			}
			if(!user.getEmail().equals(userContactInfo.getEmail())){
				user.setEmail(userContactInfo.getEmail());
				emailChange = true;
			}
			//Now removing all roles and setting unverified role
			if(emailChange){
				String newRole = EnumRoles.getUnverifiedRoleFromListOfRoles(user.getRoles());
				Set<Roles> newRoles = getAclService().getRolesForSignUp(newRole);
				logger.info("Roles from DB is " + newRoles);
				user.setRoles(newRoles);
			}
			if(phoneChange || emailChange){
				userId = (Long)getSessionFactory().getCurrentSession().save(user);
				logger.info("UserId from db after save is " + userId);
				if(userId == null){
					return MessageConstants.SOMETHING_WRONG;
				}
			}
			if(emailChange){
				try{
					getEmailManager().sendSignUpEmail(user, getUserTokenService().insertNewUserTokenAndReturnActivationLink(user, contextPath));	
				}catch(Exception e){
					logger.error("Exception occured during getting token for sending email " + e.getMessage());
				}
				return MessageConstants.INFO_WITH_EMAIL_SENT;
			}
			return MessageConstants.INFO_UPDATE_SUCCESS;
		}else{
			return MessageConstants.SOMETHING_WRONG;
		}
	}

	private String getEmailFromPrincipal(){
		if(SecurityUtils.getSubject().isAuthenticated()){
			Principal principal = (Principal)SecurityUtils.getSubject().getPrincipal();
			return principal.getEmail();	
		}
		return null;
	}

	@Override
	@Transactional
	public String saveUserProfileData(UserProfile userProfile) {
		Long userId = getUserIdFromPrincipal();
		if(userId == null){
			return MessageConstants.INVALID_SESSION;
		}
		User user = getUserService().getUserById(userId);
		return saveUserProfileDataInDB(user, userProfile);
	}
	
	private String saveUserProfileDataInDB(User user, UserProfile userProfile){
		if(user!=null){
			UserProf userProf = getUserProfFromUserProfile(userProfile);
			user.setFirstName(userProfile.getFirstName());
			user.setMiddleName(userProfile.getMiddleName());
			user.setLastName(userProfile.getLastName());
			user.setUserProf(userProf);
			Long userId = (Long)getSessionFactory().getCurrentSession().save(user);
			if(userId == null){
				return MessageConstants.SOMETHING_WRONG;
			}
			return MessageConstants.INFO_UPDATE_SUCCESS;
		}else{
			return MessageConstants.SOMETHING_WRONG;
		}
	}
	
	private UserProf getUserProfFromUserProfile(UserProfile userProfile){
		UserProf userProf = new UserProf();
		userProf.setCity(userProfile.getCity());
		userProf.setState(userProfile.getState());
		userProf.setCountry(userProfile.getCountry());
		userProf.setZip(userProfile.getZip());
		userProf.setAddress(userProfile.getAddress());
		userProf.setDob(userProfile.getDob());
		userProf.setSex(userProfile.getSex());
		return userProf;
	}

	@Override
	@Transactional
	public String saveUserEducationData(UserEducation userEducation) {
		Long userId = getUserIdFromPrincipal();
		if(userId == null){
			return MessageConstants.INVALID_SESSION;
		}		
		User user = getUserService().getUserById(userId);
		return saveUserEducationDataInDB(user, userEducation);
	}
	
	private String saveUserEducationDataInDB(User user, UserEducation userEducation){
		if(user!=null){
			UserEdu userEdu = getUserEduFromUserEducation(userEducation);
			user.setUserEdu(userEdu);
			Long userId = (Long)getSessionFactory().getCurrentSession().save(user);
			if(userId == null){
				return MessageConstants.SOMETHING_WRONG;
			}
			return MessageConstants.INFO_UPDATE_SUCCESS;
		}else{
			return MessageConstants.SOMETHING_WRONG;
		}
	}
	
	private UserEdu getUserEduFromUserEducation(UserEducation userEducation){
		UserEdu userEdu = new UserEdu();
		userEdu.setSchool(userEducation.getSchool());
		userEdu.setDegree(userEducation.getDegree());
		userEdu.setYear(userEducation.getYear());
		userEdu.setSubject(userEducation.getSubject());
		userEdu.setOther(userEducation.getOthers());
		return userEdu;
	}

	@Override
	@Transactional
	public String saveUserExperienceData(UserExperience userExperience) {
		Long userId = getUserIdFromPrincipal();
		if(userId == null){
			return MessageConstants.INVALID_SESSION;
		}
		User user = getUserService().getUserById(userId);
		return saveUserExperienceDataInDB(user, userExperience);
	}
	
	private String saveUserExperienceDataInDB(User user, UserExperience userExperience){
		if(user!=null){
			UserExp userExp = getUserExpFromUserExperience(userExperience);
			user.setUserExp(userExp);
			Long userId = (Long)getSessionFactory().getCurrentSession().save(user);
			if(userId == null){
				return MessageConstants.SOMETHING_WRONG;
			}
			return MessageConstants.INFO_UPDATE_SUCCESS;
		}else{
			return MessageConstants.SOMETHING_WRONG;
		}
	}
	
	private UserExp getUserExpFromUserExperience(UserExperience userExperience){
		UserExp userExp = new UserExp();
		userExp.setCompany(userExperience.getCompany());
		userExp.setJobTitle(userExperience.getJobTitle());
		userExp.setFromTime(userExperience.getFromTime());
		userExp.setToTime(userExperience.getToTime());
		userExp.setLocation(userExperience.getLocation());
		userExp.setOther(userExperience.getOther());
		return userExp;
	}

	public IACLService getAclService() {
		return aclService;
	}

	public IUserTokenService getUserTokenService() {
		return userTokenService;
	}

	public IEmailManager getEmailManager() {
		return emailManager;
	}

	@Override
	@Transactional
	public UserTO getUserDetails() {
		Long userId = getUserIdFromPrincipal();
		if(userId != null){
			User user = getUserService().getUserById(userId);
			UserTO userTO = new UserTO();
			userTO.setUserContactInfo(new UserContactInfo(user));
			userTO.setUserEducation(new UserEducation(user.getUserEdu()));
			userTO.setUserExperience(new UserExperience(user.getUserExp()));
			userTO.setUserProfile(new UserProfile(user.getUserProf(), user));
			return userTO;
		}
		return null;
	}

}
