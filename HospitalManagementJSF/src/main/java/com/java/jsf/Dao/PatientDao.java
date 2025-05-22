package com.java.jsf.Dao;

import java.util.List;

import com.java.jsf.model.Patient;

public interface PatientDao {

	Patient showPatientById(String patientId);

	List<Patient> showPatientByDocId(String doctorId);
	
    String addPatient(Patient patient);

}
