package com.Test.junit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Test.junit.model.Admin;
import com.Test.junit.model.User;
import com.Test.junit.services.UserService;

@org.springframework.web.bind.annotation.RestController
public class RestController {
	@Autowired
	private UserService userservice;
	@GetMapping("/")
    public String hello()
    {
    	return "This is Home Page";
    }
	@GetMapping("/save-user") 
	public String saveUser(@RequestParam String username,
			@RequestParam String firstname,
			@RequestParam String lastname,
			@RequestParam int age,
			@RequestParam String password)
	{
		User user=new User(username,firstname,lastname,age,password);
		userservice.saveMyUser(user);
		return "User Saved";
	}
	
	@GetMapping("/save-admin") 
	public String saveAdmin(@RequestParam String uniqueId,
			@RequestParam String firstname,
			@RequestParam String lastname,
			@RequestParam int age,
			@RequestParam String password)
	{
		Admin admin=new Admin(uniqueId,firstname,lastname,age,password);
		userservice.saveMyAdmin(admin);
		return "Admin Saved";
	}
}
