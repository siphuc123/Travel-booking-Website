package com.phucnst.bean;

import java.util.List;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {
	String name;
	@NotBlank(message = "")
	@Email(message = "")
	String email;
	Double marks;
	Boolean gender;
	String faculty;
	List<String> hobbies;
}
