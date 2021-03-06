package com.sd.web.domain.acl;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;


@Entity
@Table (name="PERMISSIONS")
public class Permissions implements Serializable{

	private static final long serialVersionUID = -5349722705911707128L;

	@Id
	@Column (name="ID", nullable=false)
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@ManyToMany(fetch = FetchType.LAZY, mappedBy = "permissions")
	private Set<Roles> roles;
	
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


	public Set<Roles> getRoles() {
		return roles;
	}


	public void setRoles(Set<Roles> roles) {
		this.roles = roles;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Permissions other = (Permissions) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

}
