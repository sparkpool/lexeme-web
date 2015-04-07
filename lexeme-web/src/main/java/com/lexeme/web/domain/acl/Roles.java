package com.lexeme.web.domain.acl;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="ROLES")
public class Roles implements Serializable {

	private static final long serialVersionUID = -8261711572347293852L;
	
	@Id
	@Column (name="ID", nullable=false)
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	
	@Column(name="NAME", length=50)
	private String name;

	
	public void setId(Long id) {
		this.id = id;
	}

	public Long getId() {
		return id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}
	
}
