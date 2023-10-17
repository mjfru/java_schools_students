package com.codingdojo.schools.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.schools.models.Student;

@Repository
public interface StudentRepository extends CrudRepository<Student, Long> {
	List<Student> findAll();
}
