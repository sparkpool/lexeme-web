package com.lexeme.web.service.acl;

import java.util.Set;

import com.lexeme.web.domain.acl.Roles;

public interface IACLService {

	public Set<Roles> getRolesForSignUp();

}
