package com.java.jsf.controller;

import java.util.List;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.faces.event.ValueChangeEvent;

import com.java.jsf.Dao.DoctorDao;
import com.java.jsf.Dao.MedHistoryDao;
import com.java.jsf.Dao.MedHistoryDaoImpl;
import com.java.jsf.Dao.PatientDao;
import com.java.jsf.Dao.PatientDaoImpl;
import com.java.jsf.model.Doctor;
import com.java.jsf.model.MedicationHistory;
import com.java.jsf.model.Patient;

public class DoctorController {

	private DoctorDao doctordao;
	private PatientDao patientdao;
	private MedHistoryDao meddao;
	private Patient patient = new Patient();
	private List<Patient> patientlist;
	private Doctor doctor = new Doctor();
	private List<Doctor> doctorlist;
	private String specializations;
	private String doctorId;
	private String patientId;
	private MedHistoryDao medDao = new MedHistoryDaoImpl();
	private MedicationHistory medhis = new MedicationHistory();
	private List<MedicationHistory> medList;

	public MedicationHistory getMedhis() {
		return medhis;
	}

	public void setMedhis(MedicationHistory medhis) {
		this.medhis = medhis;
	}

	public MedHistoryDao getMeddao() {
		return meddao;
	}

	public void setMeddao(MedHistoryDao meddao) {
		this.meddao = meddao;
	}

	public MedHistoryDao getMedDao() {
		return medDao;
	}

	public void setMedDao(MedHistoryDao medDao) {
		this.medDao = medDao;
	}

	public List<MedicationHistory> getMedList() {
		return medList;
	}

	public void setMedList(List<MedicationHistory> medList) {
		this.medList = medList;
	}

	public String getPatientId() {
		return patientId;
	}

	public void setPatientId(String patientId) {
		this.patientId = patientId;
	}

	public PatientDao getPatientdao() {
		return patientdao;
	}

	public void setPatientdao(PatientDao patientdao) {
		this.patientdao = patientdao;
	}

	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}

	public List<Patient> getPatientlist() {
		return patientlist;
	}

	public void setPatientlist(List<Patient> patientlist) {
		this.patientlist = patientlist;
	}

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

		return doctordao.addDoctor(doctor);

//		FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO, result, null));

	}

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

	// Without messages
//  public String getDoctorById() {
//      doctor = doctordao.SearchByDoctorsID(doctorId);
//      return "SearchDocById";  // navigate to same page name (or you can use "" to stay)
//  }

	public void specializationChanged(ValueChangeEvent e) {
		this.specializations = e.getNewValue().toString();
		this.doctorlist = doctordao.getDoctorsBySpec(this.specializations);
	}

	public String getPatientById() {
		patient = patientdao.showPatientById(patientId);

		if (patient == null) {
			FacesContext.getCurrentInstance().addMessage(null,
					new FacesMessage(FacesMessage.SEVERITY_WARN, "No Patient Found with Id: " + patientId, null));
		}
		return "SearchPatientById";

	}

	public String getPatientsByDoctorId() {
		PatientDao dao = new PatientDaoImpl();
		this.patientlist = dao.showPatientByDocId(doctorId);

		if (patientlist == null || patientlist.isEmpty()) {
			FacesContext.getCurrentInstance().addMessage(null,
					new FacesMessage(FacesMessage.SEVERITY_ERROR, "No Patient with this DoctorId: " + doctorId, null));
		}

		return "SearchPatientByDocId";
	}

	public String getMedicationHistoryByPatientId() {
		MedHistoryDao medDao = new MedHistoryDaoImpl();
		this.medList = medDao.getMedicationHistoryByPatientId(patientId);

		if (medList == null || medList.isEmpty()) {
			FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,
					"No Medication History found for Patient ID: " + patientId, null));
		}

		return "ShowPatientMedicalHistory"; 
	}

	public String addMedicalHistoryController() {

		return medDao.addMedicalHistory(medhis);
	}

}
