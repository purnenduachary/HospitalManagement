package com.java.Test.Main;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

import com.java.jsf.model.MedicationHistory;
import com.java.jsf.model.Patient;

public class Main {
	public static void main(String[] args) {
		SessionFactory sf = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sf.openSession();
		Transaction trans = session.beginTransaction();

		createMedicationHistory(session, trans);

		session.close();
		sf.close();
	}

//	public static void createPatient(Session session, Transaction trans) {
//		// Assuming doctor D002 already exists
////		Doctor doctor = (Doctor) session.get(Doctor.class, "HSkDS03");
//
//		Doctor doctor = new Doctor();
//		Patient patient = new Patient();
//		patient.setPatientId("PTH600");
//		doctor.setDoctorId("HSkDS03");
//		patient.setPatientName("Alice Johnson");
//		patient.setDateOfBirth(Date.valueOf(LocalDate.of(1995, 5, 20))); // Convert LocalDate to SQL Date
//		patient.setDoctor(doctor);
//
//		session.save(patient);
//		trans.commit();
//
//		System.out.println("Patient created successfully.");
//	}
	
	public static void createMedicationHistory(Session session, Transaction trans) {
	    // Assuming patient PTH600 already exists
	    Patient patient = new Patient();
//	    patient.setPatientId("PTH608");  // Just set the ID, no need to fetch entire object if using assigned IDs
	    
	    MedicationHistory medHistory = new MedicationHistory();
	    medHistory.setMedId("MHD6000");
	    patient.setPatientId("PTH608");
	    medHistory.setMedicines("Paracetamol");
	    medHistory.setTests("Blood Test");
	    medHistory.setPatient(patient);

	    session.save(medHistory);
	    trans.commit();

	    System.out.println("MedicationHistory created successfully.");
	}

	
	
	
	
	
}
