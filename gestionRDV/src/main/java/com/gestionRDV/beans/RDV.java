package com.gestionRDV.beans;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name="rdv")
public class RDV implements Serializable{
	public RDV() {
		// TODO Auto-generated constructor stub
	}
	
	@Id
	@GeneratedValue
	@Column(name="numeroRDV")
	private int id;

	@Column(name="dateRDV")
	private Date date;
	
	@Column(name="heureRDV")
	private String heure;
	
    @ManyToOne
    @JoinColumn(name = "codeMedecin")
    private Medecin medecin;

    @ManyToOne
    @JoinColumn(name = "codePatient")
    private Patient patient;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getHeure() {
		return heure;
	}

	public void setHeure(String heure) {
		this.heure = heure;
	}

	public Medecin getMedecin() {
		return medecin;
	}

	public void setMedecin(Medecin medecin) {
		this.medecin = medecin;
	}

	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}
	
}
