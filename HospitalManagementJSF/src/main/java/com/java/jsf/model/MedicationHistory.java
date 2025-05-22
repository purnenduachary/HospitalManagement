package com.java.jsf.model;

public class MedicationHistory {

	private String medId;
	private Patient patient;
	private String medicines;
	private String tests;


	public String getMedId() {
		return medId;
	}

	public void setMedId(String medId) {
		this.medId = medId;
	}

	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}

	public String getMedicines() {
		return medicines;
	}

	public void setMedicines(String medicines) {
		this.medicines = medicines;
	}

	public String getTests() {
		return tests;
	}

	public void setTests(String tests) {
		this.tests = tests;
	}

	@Override
	public String toString() {
		return "MedicationHistory [medId=" + medId + ", patient=" + patient + ", medicines=" + medicines + ", tests="
				+ tests + "]";
	}

	public MedicationHistory(String medId, Patient patient, String medicines, String tests) {
		this.medId = medId;
		this.patient = patient;
		this.medicines = medicines;
		this.tests = tests;
	}

	public MedicationHistory() {
	    this.patient = new Patient(); // Fixes null pointer for JSF binding
	}


}
