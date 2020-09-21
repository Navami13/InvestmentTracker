package com.prototype.file.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.*;

@Entity
public class User {
	@Id
	@Column(name="UserId")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int UserId;
	@Column(name="FirstName")
	private String FirstName;
	@Column(name="LastName")
	private String LastName;
	@Column(name="email")
	private String email;
	@Column(name="password")
	private String password;
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
