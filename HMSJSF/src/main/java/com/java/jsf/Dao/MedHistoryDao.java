package com.java.jsf.Dao;

import java.util.List;

import com.java.jsf.model.MedicationHistory;

public interface MedHistoryDao {

	List<MedicationHistory> getMedicationHistoryByPatientId(String patientId);

	List<String> getTestsByPatientId(String patientId);
	
	String addMedicalHistory(MedicationHistory medicationHistory);

}
