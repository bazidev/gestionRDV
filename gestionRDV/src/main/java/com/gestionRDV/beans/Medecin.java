package com.gestionRDV.beans;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name = "medecin")
public class Medecin implements Serializable {
	public Medecin() {
		// TODO Auto-generated constructor stub
	}

	@Id
	@GeneratedValue
	@Column(name = "codeMedecin")
	private int id;
	@Column(name = "nomMedecin")
	private String nomMedecin;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNomMedecin() {
		return nomMedecin;
	}

	public void setNomMedecin(String nomMedecin) {
		this.nomMedecin = nomMedecin;
	}

	public String getTelMedecin() {
		return telMedecin;
	}

	public void setTelMedecin(String telMedecin) {
		this.telMedecin = telMedecin;
	}

	public Date getDateEmbauche() {
		return dateEmbauche;
	}

	public void setDateEmbauche(Date dateEmbauche) {
		this.dateEmbauche = dateEmbauche;
	}

	public String getSpecialiteMedecin() {
		return specialiteMedecin;
	}

	public void setSpecialiteMedecin(String specialiteMedecin) {
		this.specialiteMedecin = specialiteMedecin;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "telMedecin")
	private String telMedecin;
	@Column(name = "dateEmbauche")
	private Date dateEmbauche;
	@Column(name = "specialiteMedecin")
	private String specialiteMedecin;
	@Column(name = "password")
	private String password;
	@Column(name = "username")
	private String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}
