package com.lexeme.web.domain.user;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="User")
public class User implements Serializable{

	private static final long serialVersionUID = 3891759651424252922L;
	
	@Id
    @Column(name="ID")
    @GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	@Column(name = "EMAIL", nullable = false, length = 50)
	private String email;
	
	@Column(name = "USER_NAME", length = 50)
	private String userName;
	
	@Column(name = "PASSWORD", nullable = false, length = 256)
	private String password;
	
	@Column(name = "FIRST_NAME", length = 50)
	private String firstName;
	
	@Column(name = "MIDDLE_NAME", length = 50)
	private String middleName;
	
	@Column(name = "LAST_NAME", length = 50)
	private String lastName;
	
	@Column(name = "PHONE_NO", length = 20)
	private String phoneNo;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "CREATE_DT", nullable = false, updatable = false)
	private Date createDt;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "MODIFIED_DT", nullable = false, insertable = false)
	private Date modifiedDt;

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

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public Date getCreateDt() {
		return createDt;
	}

	public void setCreateDt(Date createDt) {
		this.createDt = createDt;
	}

	public Date getModifiedDt() {
		return modifiedDt;
	}

	public void setModifiedDt(Date modifiedDt) {
		this.modifiedDt = modifiedDt;
	}

}
