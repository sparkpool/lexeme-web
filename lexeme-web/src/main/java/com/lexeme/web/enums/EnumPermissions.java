package com.lexeme.web.enums;

public enum EnumPermissions {

	READ("READ"),
	WRITE("WRITE"),
	DELETE("DELETE"),
	MODIFY("MODIFY"),
	;
	
	private String permission;
	
	private EnumPermissions(String permission){
		this.permission = permission;
	}

	public String getPermission() {
		return permission;
	}

	public void setPermission(String permission) {
		this.permission = permission;
	}
	
}
