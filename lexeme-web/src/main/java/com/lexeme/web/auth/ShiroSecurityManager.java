package com.lexeme.web.auth;

import org.apache.shiro.web.mgt.CookieRememberMeManager;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.apache.shiro.web.servlet.SimpleCookie;
import org.springframework.beans.factory.annotation.Autowired;

public class ShiroSecurityManager extends DefaultWebSecurityManager {

	private RemoteUserRealm remoteUserRealm;

	private static final String rememberMeCookieName = "SSID";

	@Autowired
	public ShiroSecurityManager(RemoteUserRealm remoteUserRealm) {
		this.remoteUserRealm = remoteUserRealm;

		setRealm(remoteUserRealm);
		CookieRememberMeManager rememberMeManager = new CookieRememberMeManager();
		SimpleCookie cookie = new SimpleCookie();
		cookie.setName(rememberMeCookieName);
		cookie.setHttpOnly(true);
		cookie.setMaxAge(3600 * 24 * 30);
		cookie.setPath("/");
		rememberMeManager.setCookie(cookie);
		setRememberMeManager(rememberMeManager);
		setCacheManager(null);
	}

	public RemoteUserRealm getRemoteUserRealm() {
		return remoteUserRealm;
	}
}
