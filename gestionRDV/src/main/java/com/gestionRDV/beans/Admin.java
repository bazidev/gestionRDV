package com.gestionRDV.beans;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "admin")
public class Admin implements Serializable{
	public  Admin() {
		// TODO Auto-generated constructor stub
	}
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;

	@Column(name = "username")
	private String username;

	@Column(name = "password")
	private String password;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
