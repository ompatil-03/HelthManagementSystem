package com.project.model;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.util.List;

@Entity
public class Doctor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "Name is required")
    @Size(max = 100, message = "Name must be less than 100 characters")
    private String name;

    @NotBlank(message = "Specialization is required")
    @Size(max = 50, message = "Specialization must be less than 50 characters")
    private String specialization;

    @NotBlank(message = "Email is required")
    @Email(message = "Email should be valid")
    private String email;

    @OneToMany(mappedBy = "doctor")
    private List<Appointment> appointmentsAsDoctor;

    // New field to indicate availability
    private boolean available;

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSpecialization() {
        return specialization;
    }

    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public List<Appointment> getAppointments() {
        return appointmentsAsDoctor;
    }

    public void setAppointments(List<Appointment> appointments) {
        this.appointmentsAsDoctor = appointments;
    }

    public boolean isAvailable() {
        return available;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }

    
	public Doctor(Long id,
			@NotBlank(message = "Name is required") @Size(max = 100, message = "Name must be less than 100 characters") String name,
			@NotBlank(message = "Specialization is required") @Size(max = 50, message = "Specialization must be less than 50 characters") String specialization,
			@NotBlank(message = "Email is required") @Email(message = "Email should be valid") String email,
			List<Appointment> appointments, boolean available) {
		super();
		this.id = id;
		this.name = name;
		this.specialization = specialization;
		this.email = email;
		this.appointmentsAsDoctor = appointments;
		this.available = available;
	}

	public Doctor() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Doctor [id=" + id + ", name=" + name + ", specialization=" + specialization + ", email=" + email
				+ ", appointments=" + appointmentsAsDoctor + ", available=" + available + "]";
	}
	
    
    
}
