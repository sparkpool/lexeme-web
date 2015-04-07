package com.lexeme.web.domain.user;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "USER")

@NamedQueries({
    	@NamedQuery(name = "USER.LOGIN", query = "SELECT U FROM USER U WHERE U.email = :email AND U.password = :password")
})

public class User implements Serializable {

	private static final long serialVersionUID = 3891759651424252922L;

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column(name = "EMAIL", nullable = false, length = 50, unique = true)
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

	@OneToOne(mappedBy = "user", fetch = FetchType.LAZY)
	private UserProf userProf;

	@OneToOne(mappedBy = "user", fetch = FetchType.LAZY)
	private UserEdu userEdu;

	@OneToOne(mappedBy = "user", fetch = FetchType.LAZY)
	private UserExp userExp;

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

	public void setUserProf(UserProf userProf) {
		this.userProf = userProf;
	}

	public UserProf getUserProf() {
		return userProf;
	}

	public void setUserEdu(UserEdu userEdu) {
		this.userEdu = userEdu;
	}

	public UserEdu getUserEdu() {
		return userEdu;
	}

	public void setUserExp(UserExp userExp) {
		this.userExp = userExp;
	}

	public UserExp getUserExp() {
		return userExp;
	}

}
