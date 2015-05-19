package com.lexeme.web.auth;

import java.util.HashSet;
import java.util.Set;

import org.apache.shiro.authc.AccountException;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.lexeme.web.domain.acl.Permissions;
import com.lexeme.web.domain.acl.Roles;
import com.lexeme.web.domain.user.User;
import com.lexeme.web.service.user.IUserService;
import com.lexeme.web.service.user.IUserValidationService;

public class RemoteUserRealm extends AuthorizingRealm {

	public static String realmName = "DefaultHibernateRealmName";
	public static int hashIterations = 1;

	@Autowired
	private IUserValidationService userValidationService;
	
	@Autowired
	private IUserService userService;
	
	public RemoteUserRealm() {
		super();
	}

	@Override
	public CredentialsMatcher getCredentialsMatcher() {
		HashedCredentialsMatcher credentialsMatcher = new HashedCredentialsMatcher();
		credentialsMatcher.setHashAlgorithmName("SHA-256");;
		credentialsMatcher.setStoredCredentialsHexEncoded(false);
		credentialsMatcher.setHashIterations(hashIterations);
		return credentialsMatcher;
	}

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		// null usernames are invalid
	    if (principals == null) {
	      throw new AuthorizationException("PrincipalCollection method argument cannot be null.");
	    }

	    Principal userPrincipal = (Principal) principals.fromRealm(getName()).iterator().next();

	    // Retrieve roles and permissions from database
	    User user = getUserService().getUserById(userPrincipal.getId());
	    Set<String> roleNames = getStringRoles(user.getRoles());
	    Set<String> permissions = getStringPermissions(user.getRoles());

	    SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(roleNames);
	    info.setStringPermissions(permissions);
	    return info;
	}
	
	private Set<String> getStringRoles(Set<Roles> roles){
		Set<String> strRoles = new HashSet<String>();
		if(roles!=null){
			for(Roles role : roles){
				strRoles.add(role.getName());
			}	
		}
		return strRoles;
	}
	
	private Set<String> getStringPermissions(Set<Roles> roles){
		Set<String> strPermissions = new HashSet<String>();
		if(roles!=null){
			for(Roles role : roles){
				if(role!=null && role.getPermissions()!=null){
					for(Permissions permission : role.getPermissions()){
						strPermissions.add(permission.getName());
					}
				}
			}
		}
		return strPermissions;
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

	    User user = getUserValidationService().validateUserName(username);
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
