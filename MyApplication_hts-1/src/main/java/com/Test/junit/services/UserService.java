package com.Test.junit.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.Test.junit.model.Admin;
import com.Test.junit.model.User;
import com.Test.junit.repository.AdminRepository;
import com.Test.junit.repository.UserRepository;

@Service
@Transactional
public class UserService {
	private final UserRepository userRepository;
	private final AdminRepository adminRepository;
	public UserService(UserRepository userRepository, AdminRepository adminRepository) {
		super();
		this.userRepository = userRepository;
		this.adminRepository = adminRepository;
	}
   public void saveMyUser(User user)
   {
	   userRepository.save(user);
   }
   
   public List<User> showAllUsers(){
	   List <User> users=new ArrayList<User>();
	   for(User user:userRepository.findAll()) {
		   users.add(user);
	   }
	   
	   return users;
   }
   
   public void deleteMyUser(int id) {
	   userRepository.deleteById(id);
   }
   
   public User editUser(int id) {

		return userRepository.getOne(id);

	}
   
   public User findByUsernameAndPassword(String username, String password) {
	   return userRepository.findByUsernameAndPassword(username, password);
   }
   
   public void saveMyAdmin(Admin admin)
   {
	  adminRepository.save(admin);
   }
   
   public Admin findByUniqueIdAndPassword(String uniqueId, String password) {
	   return adminRepository.findByUniqueIdAndPassword(uniqueId, password);
   }
}
