package com.sd.web.domain.user;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table (name ="USER_EDU")
public class UserEdu implements Serializable {

	private static final long serialVersionUID = -4177766905634702766L;

	@Id
	@Column(name="ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	
	@Column(name ="SCHOOL", length=50)
	private String school;
	
	@Column(name ="DEGREE", length=50)
	private String degree;
	
	@Column(name ="YEAR", length=10)
	private String year;
	
	
	@Column(name ="SUBJECT", length=50)
	private String subject;
	

	@Column(name ="OTHER", length=100)
	private String other;
	
	
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "USER_ID", nullable = false)
	private User user;
	
	
	
	public void setId(Long id) {
		this.id = id;
	}

	public Long getId() {
		return id;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getSchool() {
		return school;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getDegree() {
		return degree;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getYear() {
		return year;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getSubject() {
		return subject;
	}

	public void setOther(String other) {
		this.other = other;
	}

	public String getOther() {
		return other;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public User getUser() {
		return user;
	}
	
}
