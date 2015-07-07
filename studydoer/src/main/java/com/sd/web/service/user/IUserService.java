package com.sd.web.service.user;

import java.security.NoSuchAlgorithmException;
import java.util.Map;
import java.util.Set;

import com.sd.web.domain.user.User;
import com.sd.web.pojo.user.UserPojo;

public interface IUserService {

	public UserPojo signupUser(UserPojo userPojo, String contextPath) throws NoSuchAlgorithmException;
	public UserPojo login(UserPojo userPojo) throws NoSuchAlgorithmException;
	public boolean setPassword(String password, String userId) throws NoSuchAlgorithmException;
	public User getUserById(Long userId);
	public void logout();
	public Map<String, Set<String>> getRolesAndPermission(Long userId);
	public Long getUserIdFromPrincipal();
	public String resendActivationLinkToUser(String contextPath)
			throws NoSuchAlgorithmException;
	public User getUSerFromPrincipal();
}
