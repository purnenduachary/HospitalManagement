package com.java.jsf.model;

import java.sql.Date;
import java.time.LocalDate;

public class Patient {

	private String patientId;
	private String patientName;
	private Doctor doctor;
	private LocalDate dateOfBirth;

	public String getPatientId() {
		return patientId;
	}

	public void setPatientId(String patientId) {
		this.patientId = patientId;
	}

	public String getPatientName() {
		return patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	public Doctor getDoctor() {
		return doctor;
	}

	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}

	public Date getDateOfBirth() {
        return (dateOfBirth != null) ? Date.valueOf(dateOfBirth) : null;
    }

    public void setDateOfBirth(Date sqlDate) {
        this.dateOfBirth = (sqlDate != null) ? sqlDate.toLocalDate() : null;
    }

	@Override
	public String toString() {
		return "Patient [patientId=" + patientId + ", patientName=" + patientName + ", doctor=" + doctor
				+ ", dateOfBirth=" + dateOfBirth + "]";
	}

	public Patient(String patientId, String patientName, Doctor doctor, LocalDate dateOfBirth) {

		this.patientId = patientId;
		this.patientName = patientName;
		this.doctor = doctor;
		this.dateOfBirth = dateOfBirth;
	}

	public Patient() {
	}

}
