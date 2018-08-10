package com.Test.junit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="mytable")
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
    private int id;
	@Column
    private String username;
	@Column
    private String firstname;
	@Column
    private String lastname;
	@Column
    private int age;
	@Column
    private String password;
   
    public User() {}
    
	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public User(String username, String firtsname, String lastname, int age, String password) {
		super();
		this.username = username;
		this.firstname = firtsname;
		this.lastname = lastname;
		this.age = age;
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public String getUsername() {
		return username;
	}
	
	public String getLastname() {
		return lastname;
	}
	public int getAge() {
		return age;
	}
	public String getPassword() {
		return password;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", firtsname=" + firstname + ", lastname=" + lastname
				+ ", age=" + age + ", password=" + password + "]";
	}
    
}
