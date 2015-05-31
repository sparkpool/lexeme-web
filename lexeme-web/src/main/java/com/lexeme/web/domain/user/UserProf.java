package com.lexeme.web.domain.user;

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
@Table(name = "USER_PROF" )
public class UserProf implements Serializable {

	private static final long serialVersionUID = 6124696332446731232L;
	
	@Id
	@Column (name ="ID")
	@GeneratedValue (strategy = GenerationType.AUTO)
	private Long id;
	
	@Column (name = "CITY", length=30)
	private String city;
	
	@Column (name="STATE", length=30)
	private String state;
	
	@Column (name="COUNTRY", length=30)
	private String country;
	
	@Column (name="ZIP", length =18)
	private String zip;
	
	@Column(name="PHONE_NO",length=20)
	private String phoneNo;
	
	
	@Column(name="DOB", length=12)
	private String dob;
	
	@Column(name="ADDRESS", length=500)
	private String address;
	
	@Column(name="PHOTO_URL", length=250)
	private String photoUrl;
	
	@Column(name="OTHER", length=500)
	private String other;
	
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "USER_ID", nullable = false)
	private User user;

	@Column(name = "SEX", nullable = false, length = 10)
	private String sex;
	
	public void setUser(User user) {
		this.user = user;
	}

	public User getUser() {
		return user;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getId() {
		return id;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCity() {
		return city;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getState() {
		return state;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCountry() {
		return country;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getZip() {
		return zip;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getDob() {
		return dob;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddress() {
		return address;
	}

	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}

	public String getPhotoUrl() {
		return photoUrl;
	}

	public void setOther(String other) {
		this.other = other;
	}

	public String getOther() {
		return other;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	
	
	

	
}
