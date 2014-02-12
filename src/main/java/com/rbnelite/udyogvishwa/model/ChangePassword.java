package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="users")
public class ChangePassword {

	@Id
	@Column(name="sno")
	private int id;
	
	@NotEmpty
	@Column(name="password")
	private String Password;
	
	@NotEmpty
	private String NewPassword;
	
	@NotEmpty
	private String RePassword;
	
	@Column(name="email")
	private String user_email;
	
	
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getNewPassword() {
		return NewPassword;
	}
	public void setNewPassword(String newPassword) {
		NewPassword = newPassword;
	}
	public String getRePassword() {
		return RePassword;
	}
	public void setRePassword(String rePassword) {
		RePassword = rePassword;
	}
	

}
