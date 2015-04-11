package com.lexeme.web.enums;

public enum EnumRoles {

	STUDENT("STUDENT"),
	TUTOR("TUTOR"),
	MODERATOR("MODERATOR"),
	ADMIN("ADMIN"),
	;
	
	private String role;
	
	private EnumRoles(String role){
		this.role = role;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
}
