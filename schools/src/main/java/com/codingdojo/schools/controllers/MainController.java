package com.codingdojo.schools.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.schools.models.School;
import com.codingdojo.schools.models.Student;
import com.codingdojo.schools.services.SchoolService;
import com.codingdojo.schools.services.StudentService;

import jakarta.validation.Valid;

@Controller
public class MainController {
	
	@Autowired
	SchoolService schoolService;
	
	@Autowired
	StudentService studentService;
	
	// Home Page
	
	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("schools", schoolService.allSchools());
		return "index.jsp";
	}
	
	// View a School's Students
	@GetMapping("/school/{id}")
	public String viewSchool(@PathVariable("id") Long id, Model model) {
		model.addAttribute("school", schoolService.findSchool(id));
		return "view_school.jsp";
	}
	
	// Add a School
	@GetMapping("/school/new")
	public String newSchool(@ModelAttribute("school") School school) {
		return "new_school.jsp";
	}
	
	@PostMapping("/school/new")
	public String createSchool(@Valid @ModelAttribute("school") School school, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "new_school.jsp";
		} else {
			schoolService.createSchool(school);
			return "redirect:/";
		}
	}
	
	// Add a Student
	@GetMapping("/student/new")
	public String newStudent(Model model, @ModelAttribute("student") Student student) {
		model.addAttribute("schools", schoolService.allSchools());
		return "new_student.jsp";
	}
	
	@PostMapping("/student/new")
	public String createStudent(Model model, @Valid @ModelAttribute("student") Student student, BindingResult result) {
		if (result.hasErrors()) {
			model.addAttribute("schools", schoolService.allSchools());
			return "new_student.jsp";
		} else {
			studentService.createStudent(student);
			return "redirect:/";
		}
	}
}
