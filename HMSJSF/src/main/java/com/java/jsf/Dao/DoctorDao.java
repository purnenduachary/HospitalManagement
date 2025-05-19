package com.java.jsf.Dao;

import java.util.List;

import com.java.jsf.model.Doctor;

public interface DoctorDao {
	
	String addDoctor(Doctor doc);
	
	List<Doctor> showDoctor();


}
