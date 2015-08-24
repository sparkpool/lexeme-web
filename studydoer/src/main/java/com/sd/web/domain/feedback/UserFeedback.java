package com.sd.web.domain.feedback;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "USER_FEEDBACK")
public class UserFeedback implements Serializable{

	private static final long serialVersionUID = -6707076501074658472L;

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Column(name = "EMAIL", nullable = false, length = 50)
	private String email;
	
	@Column(name = "SUBJECT", nullable = false, length = 100)
	private String subject;
	
	@Column(name = "CATEGORY", nullable = false)
	private Long category;
	
	@Column(name = "COMMENT", nullable = false, length = 250)
	private String comment;
	
	@Column(name = "STATUS", nullable = false)
	private Long status;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public Long getCategory() {
		return category;
	}

	public void setCategory(Long category) {
		this.category = category;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Long getStatus() {
		return status;
	}

	public void setStatus(Long status) {
		this.status = status;
	}
	
}
