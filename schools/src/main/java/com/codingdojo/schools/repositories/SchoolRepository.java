package com.codingdojo.schools.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.schools.models.School;

@Repository
public interface SchoolRepository extends CrudRepository<School, Long>{
	List<School> findAll();
}
