package com.java.jsf.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.java.jsf.model.Patient;
import com.java.jsf.util.SessionHelper;

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

	
}
