package com.lexeme.web.service.acl.impl;

import java.util.HashSet;
import java.util.Set;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lexeme.web.domain.acl.Roles;
import com.lexeme.web.enums.EnumRoles;
import com.lexeme.web.service.acl.IACLService;

@Service
public class ACLServiceImpl implements IACLService{

	private static final Logger logger = Logger.getLogger(ACLServiceImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Set<Roles> getRolesForSignUp() {
		Set<Roles> roles = new HashSet<Roles>();
		Query query = getSessionFactory().getCurrentSession().getNamedQuery("ROLE.NAME")
				.setString("name", EnumRoles.STUDENT_UNVERIFIED.getRole());
		Roles role = (Roles)query.uniqueResult();
		logger.info("Role from DB is " + role);
		roles.add(role);
		return roles;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	
}
