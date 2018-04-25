package com.gestionRDV.beans;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name = "patient")
public class Patient implements Serializable {
	public Patient() {
		// TODO Auto-generated constructor stub
	}
	@Id
	@GeneratedValue
	@Column(name = "codePatient")
	private int id;
	@Column(name = "nomPatient")
	private String nomPatient;
	@Column(name = "addressePatient")
	private String addressePatient;
	@Column(name = "dateNaissance")
	private Date dateNaissance;
	@Column(name = "sexePatient")
	private String sexePatient;
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
	public String getNomPatient() {
		return nomPatient;
	}
	public void setNomPatient(String nomPatient) {
		this.nomPatient = nomPatient;
	}
	public String getAddressePatient() {
		return addressePatient;
	}
	public void setAddressePatient(String addressePatient) {
		this.addressePatient = addressePatient;
	}
	public Date getDateNaissance() {
		return dateNaissance;
	}
	public void setDateNaissance(Date dateNaissance) {
		this.dateNaissance = dateNaissance;
	}
	public String getSexePatient() {
		return sexePatient;
	}
	public void setSexePatient(String sexePatient) {
		this.sexePatient = sexePatient;
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
