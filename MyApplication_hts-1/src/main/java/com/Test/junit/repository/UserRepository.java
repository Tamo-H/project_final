package com.Test.junit.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.Test.junit.model.User;

public interface UserRepository extends CrudRepository<User, Integer>,JpaRepository<User, Integer> {
    
	public User findByUsernameAndPassword(String username, String password);
}
