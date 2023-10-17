package com.codingdojo.schools.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.schools.models.Student;
import com.codingdojo.schools.repositories.StudentRepository;

@Service
public class StudentService {
	@Autowired
	StudentRepository studentRepository;
	
	public List<Student> allStudents() {
		return studentRepository.findAll();
	}
	
	public Student createStudent(Student student) {
		return studentRepository.save(student);
	}
}
