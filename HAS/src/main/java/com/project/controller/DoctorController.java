package com.project.controller;

import com.project.model.Doctor;
import com.project.repository.DoctorRepository;
import com.project.repository.AppointmentRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class DoctorController {

    @Autowired
    private DoctorRepository doctorRepository;

    @Autowired
    private AppointmentRepository appointmentRepository;

    @RequestMapping("/doctors")
    public String viewDoctors(Model m)
    {
        List<Doctor> d = doctorRepository.findAll();
        m.addAttribute("doctors", d);
        return "doctors.jsp";
    }

    @RequestMapping("/addDoctor")
    public String showAddDoctorForm()
    {
        return "addDoctor.jsp";
    }

    @PostMapping("/addDoctor")
    public String addDoctor(@RequestParam("name") String name,
                            @RequestParam("specialization") String specialization,
                            @RequestParam("email") String email) 
    {
        Doctor d = new Doctor();
        d.setName(name);
        d.setSpecialization(specialization);
        d.setEmail(email);
        doctorRepository.save(d);
        return "redirect:/doctors";
    }

    @RequestMapping("/deleteDoctorAppointment/{appointmentId}")
    public String deleteDoctorAppointment(@PathVariable Long appointmentId,
                                          @RequestParam("doctorId") Long doctorId)
    {
        appointmentRepository.deleteById(appointmentId);
        return "redirect:/doctors?doctorId=" + doctorId;
    }

    @GetMapping("/availableDoctors")
    public String showAvailableDoctors(Model model)
    {
        List<Doctor> d = doctorRepository.findAll();
        model.addAttribute("doctors", d);
        return "doctors.jsp";
    }
    
    

}
