package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.model.Doctor;
import com.project.repository.DoctorRepository;

@Service
public class DoctorService {

	 @Autowired
	    private DoctorRepository doctorRepo;

	    public List<Doctor> findAll()
	    {
	        return doctorRepo.findAll();
	    }
}