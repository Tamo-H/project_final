package com.Test.junit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="admin")
public class Admin {
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
	    private int id;
		@Column
		private String uniqueId;
		@Column
	    private String firstname;
		@Column
	    private String lastname;
		@Column
	    private int age;
		@Column
	    private String password;
		
		public Admin( String uniqueId, String firstname, String lastname, int age, String password) {
			super();
			this.uniqueId = uniqueId;
			this.firstname = firstname;
			this.lastname = lastname;
			this.age = age;
			this.password = password;
		}
		
		public Admin() {}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getUniqueId() {
			return uniqueId;
		}

		public void setUniqueId(String uniqueId) {
			this.uniqueId = uniqueId;
		}

		public String getFirstname() {
			return firstname;
		}

		public void setFirstname(String firstname) {
			this.firstname = firstname;
		}

		public String getLastname() {
			return lastname;
		}

		public void setLastname(String lastname) {
			this.lastname = lastname;
		}

		public int getAge() {
			return age;
		}

		public void setAge(int age) {
			this.age = age;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		@Override
		public String toString() {
			return "Admin [id=" + id + ", uniqueId=" + uniqueId + ", firstname=" + firstname + ", lastname=" + lastname
					+ ", age=" + age + ", password=" + password + "]";
		}
		
	   
}
