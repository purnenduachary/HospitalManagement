package com.java.jsf.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

import com.java.jsf.model.MedicationHistory;
import com.java.jsf.model.Patient;

public class MedHistoryDaoImpl implements MedHistoryDao {

	SessionFactory sf;
	Session session;

	@Override
	public List<MedicationHistory> getMedicationHistoryByPatientId(String patientId) {
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session session = sf.openSession();

		Query query = session.createQuery("from MedicationHistory where patient.patientId = :patientId");
		query.setParameter("patientId", patientId);
		List<MedicationHistory> list = query.list();

		session.close();
		return list;
	}

	@Override
	public List<String> getTestsByPatientId(String patientId) {
		sf = new Configuration().configure().buildSessionFactory();
		session = sf.openSession();
		session.beginTransaction();

		Query query = session.createQuery("select tests from MedicationHistory where patient.patientId = :patientId");
		query.setParameter("patientId", patientId);
		List<String> testList = query.list();
		session.getTransaction().commit();
		session.close();
		return testList;
	}

	@Override
	public String addMedicalHistory(MedicationHistory medicationHistory) {
		SessionFactory sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();

		Patient patient = new Patient();
		patient.setPatientId("PTH622");
		medicationHistory.setPatient(patient);
		session.save(medicationHistory);

		transaction.commit();

		return "MainMenu.jsp?faces-redirect=true";
	}

}
