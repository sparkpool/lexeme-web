package com.lexeme.web.pojo.user;

import org.apache.commons.lang.StringUtils;

public class UserExperience {

	private String company;
	private String jobTitle;
	private String fromTime;
	private String toTime;
	private String location;
	private String other;
	
	public boolean validate(){
		if(StringUtils.isBlank(company) || StringUtils.isBlank(jobTitle) ||
				StringUtils.isBlank(fromTime) || StringUtils.isBlank(toTime) || 
				StringUtils.isBlank(location)){
			return false;
		}
		return true;
	}
	
	public boolean validateLength(){
		if(company.length() > 50 || jobTitle.length() > 50 || fromTime.length() > 20 ||
				toTime.length() > 20 || location.length() > 50){
			return false;
		}
		return true;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	public String getFromTime() {
		return fromTime;
	}

	public void setFromTime(String fromTime) {
		this.fromTime = fromTime;
	}

	public String getToTime() {
		return toTime;
	}

	public void setToTime(String toTime) {
		this.toTime = toTime;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getOther() {
		return other;
	}

	public void setOther(String other) {
		this.other = other;
	}
	
}
