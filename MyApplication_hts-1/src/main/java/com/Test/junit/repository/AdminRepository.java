package com.Test.junit.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Test.junit.model.Admin;
import com.Test.junit.model.User;

public interface AdminRepository extends JpaRepository<Admin, Integer>{

	public Admin findByUniqueIdAndPassword(String uniqueId, String password);
	
}
