package com.lexeme.web.service.user;

import java.security.NoSuchAlgorithmException;

import com.lexeme.web.domain.user.User;

public interface IUserTokenService {

	public String insertUserTokenAndReturnActivationLink(User user) throws NoSuchAlgorithmException;
}
