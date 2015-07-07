package com.sd.web.domain.acl;

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
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import com.sd.web.domain.user.User;

@Entity
@Table (name="ROLES")
@NamedQueries({
    @NamedQuery(name="ROLE.NAME",query="select r from Roles r where r.name = :name")
})
public class Roles implements Serializable {

	private static final long serialVersionUID = 7135428243632700207L;

	@Id
	@Column (name="ID", nullable=false)
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	
	@Column(name="NAME", length=50, nullable = false)
	private String name;

	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinTable(name = "ROLES_HAS_PERMISSIONS", joinColumns = {
			@JoinColumn(name = "ROLES_ID", nullable = false, updatable = false)}, 
			inverseJoinColumns = { @JoinColumn(name = "PERMISSIONS_ID", 
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

	@Override
	public String toString() {
		return "Roles [id=" + id + ", name=" + name + "]";
	}
	
}
