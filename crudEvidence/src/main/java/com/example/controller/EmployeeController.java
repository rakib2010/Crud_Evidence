package com.example.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.EmployeeModel;
import com.example.repository.EmployeeRepository;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeRepository employeeRepository;

	@GetMapping("/")
	public ModelAndView index() {
		return new ModelAndView("index");
	}
	
	

	@PostMapping("/save")
	public ModelAndView save(@ModelAttribute EmployeeModel employeeModel) {
		EmployeeModel emp = employeeRepository.save(employeeModel);
		return new ModelAndView("index");

	}
	
	@GetMapping("/showdata")
	public ModelAndView showdata() {
		return new ModelAndView("redirect:/show");
	}
	
	
	
	
	@GetMapping("/show")
	public ModelAndView show() {
		Map<String, Object> map = new HashMap<String, Object>();
		List<EmployeeModel> emp = (List<EmployeeModel>) employeeRepository.findAll();
		map.put("emp", emp);
		return new ModelAndView("show_employee", "data", map);
	}
	
	@GetMapping("/edit/{id}")
	public ModelAndView edit(@PathVariable(value = "id") long id) {
		Map<String, Object> map = new HashMap<String, Object>();
		EmployeeModel emp = employeeRepository.findById(id).get();
		map.put("emp", emp);
		return new ModelAndView("edit_employee", "data", map);
		
	}
	
	@PostMapping("/update")
	public ModelAndView update(@ModelAttribute EmployeeModel employeeModel) {
		employeeModel = employeeRepository.save(employeeModel);
		return new ModelAndView("redirect:/show");
		
	}
	
	
	@GetMapping("/delete/{id}")
	public ModelAndView delete(@PathVariable(value = "id") long id) {
		EmployeeModel emp = employeeRepository.findById(id).get();
		employeeRepository.delete(emp);
		return new ModelAndView("redirect:/show");
		
	}
	
	

}










