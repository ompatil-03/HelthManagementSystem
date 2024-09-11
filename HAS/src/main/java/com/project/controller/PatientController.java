package com.project.controller;

import com.project.model.Patient;
import com.project.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PatientController 
{

    @Autowired
    private PatientRepository patientRepository;

    // Display registration page
    @RequestMapping("/register")
    public String registerPatientPage() 
    {
        return "Sign_up.jsp";
    }

    // Handle patient registration
    @RequestMapping("/registerPatient")
    public String registerPatient(@ModelAttribute Patient p) 
    {
    	System.out.println(p);
        patientRepository.save(p);
        return "Login.jsp";
    }

    // Display login page
    @RequestMapping("/login")
    public String loginPage() 
    {
        return "Login.jsp";
    }

    // Handle patient login
    @RequestMapping("/loginPatient")
    public String login(@RequestParam String email, @RequestParam String password, Model m) 
    {
        Patient p = patientRepository.findByEmail(email);
        
        if (p!= null && p.getPassword().equals(password)   && p.getEmail().equalsIgnoreCase(email)) 
        {
            m.addAttribute("patientId", p.getId());
            return "redirect:/appointments?patientId=" + p.getId();
        	
        } 
        else 
        {
        
        	m.addAttribute("error", "Invalid email or password");
            return "Login.jsp";
        }
    }
}
