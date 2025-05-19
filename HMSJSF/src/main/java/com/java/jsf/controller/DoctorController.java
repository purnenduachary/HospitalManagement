package com.java.jsf.controller;

import java.util.List;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.faces.event.ValueChangeEvent;

import com.java.jsf.Dao.DoctorDao;
import com.java.jsf.model.Doctor;

public class DoctorController {

	private DoctorDao doctordao;
	private Doctor doctor = new Doctor();
	private List<Doctor> doctorlist;
	private String specializations;
	private String doctorId;

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

	public List<Doctor> getDoctorlist() {
		return doctorlist;
	}

	public void setDoctorlist(List<Doctor> doctorlist) {
		this.doctorlist = doctorlist;
	}

	public String getSpecializations() {
		return specializations;
	}

	public void setSpecializations(String specializations) {
		this.specializations = specializations;
	}

	public String getDoctorId() {
		return doctorId;
	}

	public void setDoctorId(String doctorId) {
		this.doctorId = doctorId;
	}

	// Methods of Controller (Added comment for my readability)

	public String addDoctors(Doctor doctor) {
		String result = doctordao.addDoctor(doctor);

		FacesContext.getCurrentInstance().addMessage(null,
				new FacesMessage(FacesMessage.SEVERITY_INFO, result, null));
		return "AddDoctor";

	}

//	public String addDoctors(Doctor doctor) {
//	    String result = doctordao.addDoctor(doctor);
//	    FacesContext.getCurrentInstance().addMessage(null,
//	        new FacesMessage(FacesMessage.SEVERITY_INFO, result, null));
//	    return "AddDoctor";  // Ensure this navigates back to the page (or use "" to stay)
//	}

	public List<Doctor> showDoctors() {
		return doctordao.showDoctor();
	}

	public String getDoctorById() {

		doctor = doctordao.SearchByDoctorsID(doctorId);

		if (doctor == null) {
			FacesContext.getCurrentInstance().addMessage(null,
					new FacesMessage(FacesMessage.SEVERITY_WARN, "No Doctor Found with Id: " + doctorId, null));
		}
		return "SearchDocById";

	}

	public void specializationChanged(ValueChangeEvent e) {
		this.specializations = e.getNewValue().toString();
		this.doctorlist = doctordao.getDoctorsBySpec(this.specializations);
	}

	// Without messages
//    public String getDoctorById() {
//        doctor = doctordao.SearchByDoctorsID(doctorId);
//        return "SearchDocById";  // navigate to same page name (or you can use "" to stay)
//    }
}
