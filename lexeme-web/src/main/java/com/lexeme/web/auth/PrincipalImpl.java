package com.lexeme.web.auth;

import com.lexeme.web.domain.user.User;

public class PrincipalImpl implements Principal {

	private static final long serialVersionUID = -6790534909325764729L;

	private Long id;
	private String firstName;
	private String email;

	private Long assumedId;
	private String assumedFirstName;
	private String assumedEmail;
	
	private boolean isAssumed = false;

	public PrincipalImpl(User user) {
		this.id = user.getId();
		this.firstName = user.getFirstName();
		this.email = user.getEmail();
	}

	public void setAssumedIdentity(User assumedUser) {
	    this.assumedId = assumedUser.getId();
	    this.assumedFirstName = assumedUser.getFirstName();
	    this.assumedEmail = assumedUser.getEmail();
	    this.isAssumed = true;
	  }

	  public void clearAssumedIdentity() {
	    this.assumedId = null;
	    this.assumedFirstName = null;
	    this.assumedEmail = null;
	    isAssumed = false;
	  }

	@Override
	public Long getId() {
		return this.assumedId == null ? this.id : this.assumedId;
	}

	@Override
	public String getFirstName() {
		return this.assumedFirstName == null ? this.firstName : this.assumedFirstName;
	}

	@Override
	public String getEmail() {
		return this.assumedEmail == null ? this.email : this.assumedEmail;
	}

	@Override
	public boolean isAssumed() {
		return this.isAssumed;
	}

	@Override
	public String toString() {
		return "PrincipalImpl [firstName=" + firstName + "]";
	}

}
