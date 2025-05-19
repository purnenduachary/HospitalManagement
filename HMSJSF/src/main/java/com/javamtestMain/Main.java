package com.javamtestMain;

import com.java.jsf.Dao.DoctorDaoImpl;
import com.java.jsf.model.Doctor;

public class Main {
	
	public static void main(String[] args) {
		
		Doctor doc = new Doctor();
		DoctorDaoImpl dao = new DoctorDaoImpl();
		
		dao.searchDoctorDao(doctorId);
	}

}
