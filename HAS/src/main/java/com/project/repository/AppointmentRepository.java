package com.project.repository;

import com.project.model.Appointment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

import javax.transaction.Transactional;

@Repository
@Transactional
public interface AppointmentRepository extends JpaRepository<Appointment, Long> {
    
    // Find appointments by patientId
    List<Appointment> findByPatientId(Long patientId);
}
