package com.project.controller;

import com.project.model.Appointment;
import com.project.model.Patient;
import com.project.repository.AppointmentRepository;
import com.project.repository.PatientRepository;
import com.project.repository.DoctorRepository;

import java.beans.PropertyEditorSupport;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

@Controller
public class AppointmentController {

    @Autowired
    private AppointmentRepository appointmentRepository;

    @Autowired
    private PatientRepository patientRepository;

    @Autowired
    private DoctorRepository doctorRepository;

    // View appointments and available doctors for a specific patient
    @RequestMapping("/appointments")
    public String viewAppointments(Model m, @RequestParam("patientId") Long patientId) {
    	
    	List<Appointment>ls=appointmentRepository.findByPatientId(patientId)
;        m.addAttribute("appointments", appointmentRepository.findByPatientId(patientId));
		m.addAttribute("ls",ls);
        m.addAttribute("doctors", doctorRepository.findAll());
        m.addAttribute("patientId", patientId);
        return "appointments.jsp";
    }

    // Book a new appointment
    @PostMapping("/bookAppointment")
    public String bookAppointment(@ModelAttribute Appointment a, BindingResult result, @RequestParam("patientId") Long patientId, Model m) {
        if (result.hasErrors()) {
            System.out.println("Error occurred!");
            m.addAttribute("doctors", doctorRepository.findAll());
            m.addAttribute("patientId", patientId);
            return "appointments.jsp"; // Return to the form if there are errors
        }

        // Retrieve patient and set it to the appointment
        Patient p = patientRepository.findById(patientId).orElse(null);
        if (p == null) {
            m.addAttribute("error", "Patient not found.");
            m.addAttribute("doctors", doctorRepository.findAll());
            return "appointments.jsp"; // Return to the form if patient is not found
        }

        a.setPatient(p);
        appointmentRepository.save(a);

        // Add success message
        m.addAttribute("message", "You have successfully booked the appointment!");

        // Redirect to the success page
        return "redirect:/appointments?patientId=" + patientId;
    }


    @GetMapping("/appointmentSuccess")
    public String showSuccessPage(Model m) {
        return "appointmentSuccess.jsp"; // Return the view name for the success page
    }

    // Delete an appointment
    @RequestMapping("/deleteAppointment/{appointmentId}")
    public String deleteAppointment(@PathVariable Long appointmentId, @RequestParam("patientId") Long patientId) {
        if (appointmentRepository.existsById(appointmentId)) {
            appointmentRepository.deleteById(appointmentId);
        }
        return "redirect:/appointments?patientId=" + patientId;
    }
    
    
    //data time convertor 
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("HH:mm");

        binder.registerCustomEditor(LocalDate.class, new PropertyEditorSupport() {
            @Override
            public void setAsText(String text) {
                setValue(LocalDate.parse(text, dateFormatter));
            }
        });

        binder.registerCustomEditor(LocalTime.class, new PropertyEditorSupport() {
            @Override
            public void setAsText(String text) {
                setValue(LocalTime.parse(text, timeFormatter));
            }
        });
    }
}
