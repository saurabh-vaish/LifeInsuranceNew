package com.app.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Login")
public class Login {
	@Id
	private Integer userId;
	private String password;
	private String type;
	

	public Login() {
		super();
	}


	public Login(Integer userId) {
		super();
		this.userId = userId;
	}


	public Login(Integer userId, String password, String type) {
		super();
		this.userId = userId;
		this.password = password;
		this.type = type;
	}


	public Integer getUserId() {
		return userId;
	}


	public void setUserId(Integer userId) {
		this.userId = userId;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	@Override
	public String toString() {
		return "Login [userId=" + userId + ", password=" + password + ", type=" + type + "]";
	}
	
	

}
