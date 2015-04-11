package com.lexeme.web.domain.acl;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import com.lexeme.web.domain.user.User;

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

	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinTable(name = "ROLES_HAS_PERMISSION", joinColumns = {
			@JoinColumn(name = "ROLE_ID", nullable = false, updatable = false)}, 
			inverseJoinColumns = { @JoinColumn(name = "PERMISSION_ID", 
			nullable = false, updatable = false) })
	private Set<Permissions> permissions;
	
	@ManyToMany(fetch = FetchType.LAZY, mappedBy = "roles")
	private Set<User> users;
	
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

	public Set<User> getUsers() {
		return users;
	}

	public Set<Permissions> getPermissions() {
		return permissions;
	}

	public void setPermissions(Set<Permissions> permissions) {
		this.permissions = permissions;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
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
		Roles other = (Roles) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	
}
