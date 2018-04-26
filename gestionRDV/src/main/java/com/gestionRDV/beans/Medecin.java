package com.gestionRDV.beans;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "medecin")
public class Medecin implements Serializable {
	@Id
	@GeneratedValue
	@Column(name = "codeMedecin")
	private int id;

	@Column(name = "nomMedecin")
	private String nomMedecin;
	
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
	
    @OneToMany(mappedBy="medecin")
    private Set<RDV> rdvs;
    
	public Medecin() {
		// TODO Auto-generated constructor stub
	}

	public Date getDateEmbauche() {
		return dateEmbauche;
	}

	public int getId() {
		return id;
	}

	public String getNomMedecin() {
		return nomMedecin;
	}

	public String getPassword() {
		return password;
	}

	public String getSpecialiteMedecin() {
		return specialiteMedecin;
	}

	public String getTelMedecin() {
		return telMedecin;
	}

	public String getUsername() {
		return username;
	}

	public void setDateEmbauche(Date dateEmbauche) {
		this.dateEmbauche = dateEmbauche;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setNomMedecin(String nomMedecin) {
		this.nomMedecin = nomMedecin;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setSpecialiteMedecin(String specialiteMedecin) {
		this.specialiteMedecin = specialiteMedecin;
	}

	public void setTelMedecin(String telMedecin) {
		this.telMedecin = telMedecin;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}
