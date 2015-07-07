package com.sd.web.pojo.user;

import org.apache.commons.lang.StringUtils;

import com.sd.web.domain.user.UserEdu;

public class UserEducation {

	private String school;
	private String degree;
	private String year;
	private String subject;
	private String others;

	public UserEducation() {
	}

	public UserEducation(UserEdu userEdu) {
		if (userEdu != null) {
			this.school = userEdu.getSchool();
			this.degree = userEdu.getDegree();
			this.year = userEdu.getYear();
			this.subject = userEdu.getSubject();
			this.others = userEdu.getOther();

		}
	}

	public boolean validate() {
		if (StringUtils.isBlank(school) || StringUtils.isBlank(degree)
				|| StringUtils.isBlank(year) || StringUtils.isBlank(subject)) {
			return false;
		}
		return true;
	}

	public boolean validateLength() {
		if (school.length() > 50 || degree.length() > 50 || year.length() > 10
				|| subject.length() > 50
				|| (StringUtils.isNotBlank(others) && others.length() > 100)) {
			return false;
		}
		return true;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getOthers() {
		return others;
	}

	public void setOthers(String others) {
		this.others = others;
	}

}
