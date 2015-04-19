package com.lexeme.web.domain.user;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

import com.lexeme.web.domain.user.User;

@Entity
@Table(name = "USER_TOKEN", uniqueConstraints = {
		@UniqueConstraint(columnNames = "TOKEN")
})
@NamedQueries({
    @NamedQuery(name="TOKEN.VALIDATE", query="select ut from UserToken ut where ut.token = :token and ut.tokenTypeId = :tokenTypeId")		
})
public class UserToken implements Serializable{

	private static final long serialVersionUID = -6338743166955178316L;
	
	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@ManyToOne(fetch = FetchType.LAZY)
	private User user;
	
	@Column(name = "TOKEN", length = 256, nullable = false)
	private String token;

	@Column(name = "TOKEN_TYPE_ID", nullable = false)
	private Long tokenTypeId;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "CREATE_DT", nullable = false, updatable = false)
	private Date createDt;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public Date getCreateDt() {
		return createDt;
	}

	public void setCreateDt(Date createDt) {
		this.createDt = createDt;
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
		UserToken other = (UserToken) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	public Long getTokenTypeId() {
		return tokenTypeId;
	}

	public void setTokenTypeId(Long tokenTypeId) {
		this.tokenTypeId = tokenTypeId;
	}

	@Override
	public String toString() {
		return "UserToken [id=" + id + ", token=" + token + ", tokenTypeId="
				+ tokenTypeId + ", createDt=" + createDt + "]";
	}
	
}
