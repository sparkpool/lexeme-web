package com.sd.web.auth;

import java.util.Map;
import java.util.Set;

import org.apache.log4j.Logger;
import org.apache.shiro.authc.AccountException;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.sd.web.domain.user.User;
import com.sd.web.service.user.IUserService;
import com.sd.web.service.user.IUserValidationService;

public class RemoteUserRealm extends AuthorizingRealm {
	
	private static final Logger logger = Logger.getLogger(RemoteUserRealm.class);
			
	@Autowired
	private IUserValidationService userValidationService;
	
	@Autowired
	private IUserService userService;
	
	public RemoteUserRealm() {
		super();
	}

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		// null usernames are invalid
	    if (principals == null) {
	      throw new AuthorizationException("PrincipalCollection method argument cannot be null.");
	    }

	    Principal userPrincipal = (Principal) principals.fromRealm(getName()).iterator().next();

	    // Retrieve roles and permissions from database
	    Map<String, Set<String>> map = getUserService().getRolesAndPermission(userPrincipal.getId());
	    
	    logger.info("Role and permissions are " + map);
	    
	    SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(map.get("roles"));
	    info.setStringPermissions(map.get("permissions"));
	    return info;
	}
	
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		UsernamePasswordToken upToken = (UsernamePasswordToken) token;
	    String username = upToken.getUsername();
	    // Null username is invalid
	    if (username == null) {
	      throw new AccountException("Null usernames are not allowed by this realm.");
	    }

	    User user = getUserValidationService().validateUser(username);
	    if (user == null) {
		      throw new UnknownAccountException("No account found for user [" + username + "]");
		}
	    String password = user.getPassword();
	    Principal principal = new PrincipalImpl(user);
	    return buildAuthenticationInfo(principal, password.toCharArray());
	}

	protected AuthenticationInfo buildAuthenticationInfo(Principal principal, char[] password) {
	    return new SimpleAuthenticationInfo(principal, password, getName());
	}

	public IUserValidationService getUserValidationService() {
		return userValidationService;
	}

	public IUserService getUserService() {
		return userService;
	}
	
}
