package com.lexeme.web.service.acl.impl;

import java.security.InvalidParameterException;
import java.util.HashSet;
import java.util.Set;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lexeme.web.domain.acl.Roles;
import com.lexeme.web.domain.user.User;
import com.lexeme.web.enums.EnumRoles;
import com.lexeme.web.service.acl.IACLService;

@Service
public class ACLServiceImpl implements IACLService{

	private static final Logger logger = Logger.getLogger(ACLServiceImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Set<Roles> getRolesForSignUp(String role) {
		return getRolesFromDB(role);
	}
	
	private Set<Roles> getRolesFromDB(String roleStr){
		Set<Roles> roles = new HashSet<Roles>();
		Query query = getSessionFactory().getCurrentSession().getNamedQuery("ROLE.NAME")
				.setString("name", roleStr);
		Roles role = (Roles)query.uniqueResult();
		logger.info("Role from DB is " + role);
		if(role!=null){
			roles.add(role);	
		}
		return roles;
	}

	@Override
	public void makeUserVerified(User user){
		Set<Roles> roles = user.getRoles();
		logger.info("Roles from DB is " + roles);
		if(roles!=null && roles.size() > 0){
			Roles role = roles.iterator().next();
			EnumRoles enumRoles = EnumRoles.getVerifiedRole(role);
			logger.info("Verified Role from Enum is " + enumRoles);
			if(enumRoles!=null){
				roles = getRolesFromDB(enumRoles.getRole());
				if(roles!=null && roles.size() > 0){
					updateRoleInDB(user, roles);
				}else{
					throw new InvalidParameterException("INVALID VERIFIED ROLE");
				}
			}else{
				throw new InvalidParameterException("INVALID VERIFIED ROLE");
			}
		}
	}
	
	private void updateRoleInDB(User user, Set<Roles> roles){
		user.setRoles(roles);
		getSessionFactory().getCurrentSession().save(user);
	}
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	
}
