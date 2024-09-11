package com.project.model;

import javax.persistence.*;

import java.time.LocalDate;
import java.time.LocalTime;

@Entity

public class Appointment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "doctor_id", nullable = false)
    private Doctor doctor;

    @ManyToOne(fetch = FetchType.LAZY)
   @JoinColumn(name = "patient_id", nullable = false)
    private Patient patient;

    @Column(name = "date")
    private LocalDate date;

    @Column(name = "time")
    private LocalTime time;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public LocalTime getTime() {
		return time;
	}

	public void setTime(LocalTime time) {
		this.time = time;
	}

	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}

	public Doctor getDoctor() {
		return doctor;
	}

	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}

	public Appointment(Long id, Doctor doctor, Patient patient, LocalDate date, LocalTime time) {
		super();
		this.id = id;
		this.doctor = doctor;
		this.patient = patient;
		this.date = date;
		this.time = time;
	}

	public Appointment() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Appointment [id=" + id + ", doctor=" + doctor + ", patient=" + patient + ", date=" + date + ", time="
				+ time + "]";
	}
	
}
