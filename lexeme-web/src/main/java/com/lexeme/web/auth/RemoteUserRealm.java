package com.lexeme.web.auth;

import org.apache.shiro.authc.AccountException;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

public class RemoteUserRealm extends AuthorizingRealm {

	public static String realmName = "DefaultHibernateRealmName";
	public static int hashIterations = 1;

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
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection arg0) {
		// TODO Auto-generated method stub
		return null;
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

	    String password = null;//getUserSecurityService().getPasswordForUser(username);
	    Principa principal = null;//getUserSecurityService().getPrincipal(username);
	    if (password == null) {
	      throw new UnknownAccountException("No account found for user [" + username + "]");
	    }
	    return buildAuthenticationInfo(principal, password.toCharArray());
	}

	protected AuthenticationInfo buildAuthenticationInfo(Principal principal, char[] password) {
	    return new SimpleAuthenticationInfo(principal, password, getName());
	}
	
}
