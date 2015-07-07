package com.sd.web.service.acl;

import java.util.Set;

import com.sd.web.domain.acl.Roles;
import com.sd.web.domain.user.User;

public interface IACLService {

	public Set<Roles> getRolesForSignUp(String role);
	
	public void makeUserVerified(User user);
}
