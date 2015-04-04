package com.lexeme.web.common.user;

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
@Table (name ="USER_EXP")
public class UserExp implements Serializable {

	
	private static final long serialVersionUID = 7370672427650565739L;

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column (name = "COMPANY", length=50)
	private String company;
	
	@Column (name = "JOB_TITLE", length=180)
	private String jobTitle;
	
	@Column (name = "FROM_TIME", length=45)
	private String fromTime;
	
	
	@Column (name = "TO_TIME", length=45)
	private String toTime;
	
	@Column (name = "LOCATION", length=50)
	private String location;
	
	@Column (name = "OTHER", length=500)
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

	public void setCompany(String company) {
		this.company = company;
	}

	public String getCompany() {
		return company;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	public String getJobTitle() {
		return jobTitle;
	}

	public void setFromTime(String fromTime) {
		this.fromTime = fromTime;
	}

	public String getFromTime() {
		return fromTime;
	}

	public void setToTime(String toTime) {
		this.toTime = toTime;
	}

	public String getToTime() {
		return toTime;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getLocation() {
		return location;
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
