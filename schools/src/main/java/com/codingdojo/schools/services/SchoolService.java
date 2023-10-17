package com.codingdojo.schools.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.schools.models.School;
import com.codingdojo.schools.repositories.SchoolRepository;

@Service
public class SchoolService {
	@Autowired
	SchoolRepository schoolRepository;
	
	public List<School> allSchools() {
		return schoolRepository.findAll();
	}
	
	public School createSchool(School school) {
		return schoolRepository.save(school);
	}
	
	public School findSchool(Long id) {
		Optional<School> optionalSchool = schoolRepository.findById(id);
		if (optionalSchool.isPresent()) {
			return optionalSchool.get();
		} else {
			return null;
		}
	}
}
