package com.lexeme.web.enums;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import com.lexeme.web.domain.acl.Roles;

public enum EnumRoles {

	STUDENT("STUDENT","STUDENT"),
	STUDENT_UNVERIFIED("STUDENT_UNVERIFIED","STUDENT"),
	TUTOR("TUTOR","TUTOR"),
	TUTOR_UNVERIFIED("TUTOR_UNVERIFIED","TUTOR"),
	MODERATOR("MODERATOR","MODERATOR"),
	ADMIN("ADMIN","ADMIN"),
	;
	
	private String role;
	private String displayName;
	
	private EnumRoles(String role, String displayName){
		this.role = role;
		this.displayName = displayName;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
	public static EnumRoles getVerifiedRole(Roles role){
		for(EnumRoles enumRoles : values()){
			if(!enumRoles.getRole().equals(role.getName()) && role.getName().contains(enumRoles.getRole())){
				return enumRoles;
			}
		}
		return null;
	}
	
	public static List<EnumRoles> getRolesForSignUP(){
		List<EnumRoles> roles = new ArrayList<EnumRoles>();
		roles.add(STUDENT_UNVERIFIED);
		roles.add(TUTOR_UNVERIFIED);
		return roles;
	}
	
	public static String getUnverifiedRoles(){
		StringBuilder strBuilder = new StringBuilder();
		strBuilder.append(STUDENT_UNVERIFIED.getRole()).append(",").
		append(TUTOR_UNVERIFIED.getRole());
		return strBuilder.toString();
	}
	
	public static String getUnverifiedRoleFromListOfRoles(Set<Roles> roles){
		for(Roles role : roles){
			if(role.getName().equals(STUDENT.getRole())){
				return STUDENT_UNVERIFIED.getRole();
			}else if(role.getName().equals(TUTOR.getRole())){
				return TUTOR_UNVERIFIED.getRole();
			}else if(role.getName().equals(STUDENT_UNVERIFIED.getRole())){
				return STUDENT_UNVERIFIED.getRole();
			}else if(role.getName().equals(TUTOR_UNVERIFIED.getRole())){
				return TUTOR_UNVERIFIED.getRole();
			}
		}
		return null;
	}

	public static String getTutorRoles(){
		StringBuilder strBuilder = new StringBuilder();
		strBuilder.append(TUTOR.getRole()).append(",").
		append(TUTOR_UNVERIFIED.getRole());
		return strBuilder.toString();
	}
	
	public String getDisplayName() {
		return displayName;
	}

	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}
}
