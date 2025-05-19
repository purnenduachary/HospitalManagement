package com.java.jsf.controller;

import java.util.List;

import com.java.jsf.Dao.DoctorDao;
import com.java.jsf.model.Doctor;

public class DoctorController {
	
	DoctorDao doctordao;
	
	Doctor doctor;
 
	public DoctorDao getDoctordao() {
		return doctordao;
	}
 
	public void setDoctordao(DoctorDao doctordao) {
		this.doctordao = doctordao;
	}
	
	
	public Doctor getDoctor() {
		return doctor;
	}
 
	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}
	
	
	public String addDoctors(Doctor doctor) {
		System.out.println("Doctor Added");
		return doctordao.addDoctor(doctor);

	}
	
	
	public List<Doctor> showDoctors() {
	    return doctordao.showDoctor();
	}

	
}
