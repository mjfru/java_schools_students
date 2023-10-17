package com.codingdojo.schools.models;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name="students")
public class Student {
	// Attributes:
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@NotBlank(message = "Field cannot be blank.")
	@Size(min = 2, max = 20, message="First name must be between 2 and 20 characters.")
	private String firstName;
	
	@NotBlank(message = "Field cannot be blank.")
	@Size(min = 2, max = 20, message="Last name must be between 2 and 20 characters.")
	private String lastName;
	
	@NotNull(message = "Field cannot be blank")
	@Min(value = 18, message = "Must be at least 18 years old to enroll.")
	private Integer age;
	
	@Column(updatable=false)
	private Date createdAt;
	
	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="school_id")
	@NotNull(message = "Please select a school")
	private School school;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public School getSchool() {
		return school;
	}

	public void setSchool(School school) {
		this.school = school;
	}
	
	
}
