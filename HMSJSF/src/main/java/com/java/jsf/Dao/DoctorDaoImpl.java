package com.java.jsf.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.java.jsf.model.Doctor;
import com.java.jsf.model.Status;
import com.java.jsf.util.SessionHelper;

public class DoctorDaoImpl implements DoctorDao{
	
	SessionFactory sf;
	Session session;

	@Override
	public String addDoctor(Doctor doctor) {
	    sf = new Configuration().configure().buildSessionFactory();
	    session = sf.openSession();

	    String generatedID = generateDoctorID(session);
	    doctor.setDoctorId(generatedID);
	    doctor.setIsStatus(Status.ACTIVE); 

	    Transaction tx = session.beginTransaction();
	    session.save(doctor);
	    tx.commit();
	    session.close();
		return "Doctor added SuccessFull";
	}

	private String generateDoctorID(Session session) {
	    Query query = session.createQuery("select count(d) from Doctor d");
	    long count = (long) query.uniqueResult();
	    
	    String prefix = "HSk";
	    String uniquePart = String.format("DS%02d", count + 1); // DS01, DS02, etc.
	    
	    return prefix + uniquePart;  
	}

	@Override
	public List<Doctor> showDoctor() {
		session = SessionHelper.getSessionFactory().openSession();
		Query query  = session.getNamedQuery("showDoctors");
		List<Doctor> doclist = query.list();
		return doclist;
	}

}
