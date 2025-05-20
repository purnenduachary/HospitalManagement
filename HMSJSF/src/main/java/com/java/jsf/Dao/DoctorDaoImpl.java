package com.java.jsf.Dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

import com.java.jsf.model.Doctor;
import com.java.jsf.model.Specialization;
import com.java.jsf.model.Status;
import com.java.jsf.util.SessionHelper;

public class DoctorDaoImpl implements DoctorDao {

	SessionFactory sf;
	Session session;

	private String dropCode;

	public String getdropCode() {
		return dropCode;
	}

	public void setdropCode(String dropCode) {
		this.dropCode = dropCode;
	}

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
		return "DoctorDashBoard.jsf?faces-redirect=true";
	}

	private String generateDoctorID(Session session) {
		Query query = session.createQuery("select count(d) from Doctor d");
		long count = (long) query.uniqueResult(); // returns object so typecast to long

		String prefix = "HSk";
		String uniquePart = String.format("DS%02d", count + 1);
		return prefix + uniquePart;
	}

	@Override
	public List<Doctor> showDoctor() {
		session = SessionHelper.getSessionFactory().openSession();
		Query query = session.getNamedQuery("showDoctors");
		List<Doctor> doclist = query.list();
		return doclist;
	}



	@Override
	public Doctor SearchByDoctorsID(String doctorId) {
		
		sf = new Configuration().configure().buildSessionFactory(); 

		Session session = sf.openSession();
		Doctor doctor = (Doctor) session.get(Doctor.class, doctorId);

		session.close(); 

		return doctor;
	}

	
	public List<Doctor> getDoctorsBySpec(String specialization) {
		sf = new Configuration().configure().buildSessionFactory();
	    session = sf.openSession();
	    Criteria cr = session.createCriteria(Doctor.class);
	    cr.add(Restrictions.eq("specialization", Specialization.valueOf(specialization)));
	    List<Doctor> list = cr.list();
	    session.close();
	    return list;
	}
	

}
