package com.java.jsf.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.java.jsf.model.MedicationHistory;
import com.java.jsf.util.SessionHelper;

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
	public String addMedicalHistory(MedicationHistory medHistory) {
		session = SessionHelper.getSessionFactory().openSession();
		String medId = getNextMedId(session);
		medHistory.setMedId(medId);
		Transaction tx = session.beginTransaction();
		session.save(medHistory);
		tx.commit();
		return "MedHisDashBoard.jsf?faces-redirect=true";
	}
	
	public static String getNextMedId(Session session) {
		String prefix = "MHD";
		String sql = "select max(medId) from MedicationHistory";
		String maxId = (String) session.createQuery(sql).uniqueResult();
		
		if(maxId == null) {
			return prefix + "0001";
		}
		
		int id = Integer.parseInt(maxId.substring(prefix.length()));
		id++;
		
		return String.format("%s%03d", prefix,id);
	}
	
	
	

}
