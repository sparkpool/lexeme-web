package com.lexeme.web.auth;

import java.io.Serializable;

public interface Principal extends Serializable {

	public Long getId();

	public String getFirstName();

	public String getEmail();

	public boolean isAssumed();
}
