package com.lexeme.web.service.acl;

import java.util.Set;

import com.lexeme.web.domain.acl.Roles;
import com.lexeme.web.domain.user.User;

public interface IACLService {

	public Set<Roles> getRolesForSignUp(String role);
	
	public void makeUserVerified(User user);
}
