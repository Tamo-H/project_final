package com.Test.junit.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Test.junit.model.Admin;
import com.Test.junit.model.User;
import com.Test.junit.services.UserService;

@Controller
public class ApplicationController {

	@Autowired
	private UserService userService;

	@RequestMapping("/welcome")
	public String welCome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}

	@RequestMapping("/register")
	public String registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "welcomepage";
	}

	@PostMapping("/save-user")
	public String registerUser(@ModelAttribute User user, BindingResult bindingReasult, HttpServletRequest request) {
		userService.saveMyUser(user);
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";

	}
	@GetMapping("/show-users-user")
	public String showAllUserstouser(HttpServletRequest request) {
		request.setAttribute("users", userService.showAllUsers());
		request.setAttribute("mode", "ALL_USER_USER");
		return "welcomepage";
	}

	@GetMapping("/show-users-admin")
	public String showAllUsers(HttpServletRequest request) {
		request.setAttribute("users", userService.showAllUsers());
		request.setAttribute("mode", "ALL_USER_ADMIN");
		return "welcomepage";
	}

	@RequestMapping("/delete-user")
	public String deleteUser(@RequestParam int id, HttpServletRequest request) {
		userService.deleteMyUser(id);
		request.setAttribute("users", userService.showAllUsers());
		request.setAttribute("mode", "ALL_USER_ADMIN");
		return "welcomepage";
	}

	@RequestMapping("/edit-user")

	public String editUser(@RequestParam int id, HttpServletRequest request) {

		request.setAttribute("user", userService.editUser(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "welcomepage";

	}

	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN");
		return "welcomepage";
	}

	@RequestMapping("/loging-user")
	public String loginUser(@ModelAttribute User user, HttpServletRequest request) {
		if (userService.findByUsernameAndPassword(user.getUsername(), user.getPassword()) != null) {
			return "homepage";
		} else {
			request.setAttribute("error", "Invalid Username Or Password");
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcomepage";
		}
	}
	
	@RequestMapping("/register-admin")
	public String adminRegistration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_ADMIN_REGISTER");
		return "welcomepage";
	}

	@PostMapping("/save-admin")
	public String registerAdmin(@ModelAttribute Admin admin, BindingResult bindingReasult, HttpServletRequest request) {
		userService.saveMyAdmin(admin);
		request.setAttribute("mode", "MODE_ADMIN_HOME");
		return "welcomepage";

	}
	
	@RequestMapping("/admin-login")
	public String adminLogin(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_ADMIN_LOGIN");
		return "welcomepage";
	}
	
	@RequestMapping("/loging-admin")
	public String loginAdmin(@ModelAttribute Admin admin, HttpServletRequest request) {
		if (userService.findByUniqueIdAndPassword(admin.getUniqueId(), admin.getPassword()) != null) {
			return "adminhomepage";
		} else {
			request.setAttribute("error", "Invalid Username Or Password");
			request.setAttribute("mode", "MODE_ADMIN_LOGIN");
			return "welcomepage";
		}
	}
}
