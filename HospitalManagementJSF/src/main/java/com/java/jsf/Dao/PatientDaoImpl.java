package com.java.jsf.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.java.jsf.model.Patient;

public class PatientDaoImpl implements PatientDao {

	SessionFactory sf;
	Session session;

	@Override
	public Patient showPatientById(String patientId) {
		sf = new Configuration().configure().buildSessionFactory();
		session = sf.openSession();

		Patient patient = (Patient) session.get(Patient.class, patientId);

		if (patient == null) {
			System.out.println("Patient not found for Id: " + patientId);
		}
		session.close();
		return patient;
	}

	
	
	public List<Patient> showPatientByDocId(String doctorId) {
		sf = new Configuration().configure().buildSessionFactory();
	    session = sf.openSession();
	    Query query = session.createQuery("from Patient where doctor.doctorId = :doctorId");
	    query.setParameter("doctorId", doctorId);
	    List<Patient> result = query.list();
	    session.close();
	    return result;
	}
	
	@Override
	public String addPatient(Patient patient) {
	    sf = new Configuration().configure().buildSessionFactory();
	    session = sf.openSession();

	    String generatedID = generatePatientID(session);
	    patient.setPatientId(generatedID);

	    Transaction tx = session.beginTransaction();
	    session.save(patient);
	    tx.commit();
	    session.close();

	    return "PatientDashBoard.jsf?faces-redirect=true";
	}

	private String generatePatientID(Session session) {
	    Query query = session.createQuery("select count(p) from Patient p");
	    long count = (long) query.uniqueResult();
	    String prefix = "PTH";
	    String uniquePart = String.format("%03d", count + 1);
	    return prefix + uniquePart;
	}


	
	

	
}