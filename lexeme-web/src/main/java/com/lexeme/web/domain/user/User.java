package com.lexeme.web.domain.user;

import java.io.Serializable;
import java.util.Date;
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
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

import com.lexeme.web.domain.acl.Roles;
import com.lexeme.web.domain.course.Course;

@Entity
@Table(name = "USER",
uniqueConstraints = {
		@UniqueConstraint(columnNames = "EMAIL"),
		@UniqueConstraint(columnNames = "USER_NAME")
})

@NamedQueries({
    	@NamedQuery(name = "USER.LOGIN", query = "select u from User u where u.email = :email and u.password = :password"),
    	@NamedQuery(name = "USER.VALIDATE", query = "select u from User u where u.email = :email or u.userName = :userName"),
    	@NamedQuery(name = "EMAIL.VALIDATE", query = "select u from User u where u.email = :email"),
    	@NamedQuery(name = "USERNAME.VALIDATE", query = "select u from User u where u.userName = :userName"),
    	@NamedQuery(name = "USERID.VALIDATE", query = "select u from User u where u.id = :id")
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
	
	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinTable(name = "USER_HAS_ROLES", joinColumns = {
			@JoinColumn(name = "USER_ID", nullable = false, updatable = false)}, 
			inverseJoinColumns = { @JoinColumn(name = "ROLES_ID", 
			nullable = false, updatable = false) })
	private Set<Roles> roles;
	
	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinTable(name = "USER_HAS_COURSE", joinColumns = {
			@JoinColumn(name = "USER_ID", nullable = false, updatable = false)}, 
			inverseJoinColumns = { @JoinColumn(name = "COURSE_ID", 
			nullable = false, updatable = false) })
	private Set<Course> courses;
	
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

	public Set<Roles> getRoles() {
		return roles;
	}

	public void setRoles(Set<Roles> roles) {
		this.roles = roles;
	}

	public Set<Course> getCourses() {
		return courses;
	}

	public void setCourses(Set<Course> courses) {
		this.courses = courses;
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
		User other = (User) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", email=" + email + ", userName=" + userName
				+ ", firstName=" + firstName + ", middleName=" + middleName
				+ ", lastName=" + lastName + ", phoneNo=" + phoneNo
				+ ", createDt=" + createDt + ", modifiedDt=" + modifiedDt
				+ ", roles=" + roles + "]";
	}

}
