package com.empcrud.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="employee")
public class Employee implements Serializable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String fullname;
	private String address;
	private String email;
	private String password;
	private String designation;
	private String department;
	private String salary ;
	private String mobileno;
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Employee(String fullname, String address, String email, String password, String designation,
			String department,String salary, String mobileno) {
		super();
		this.fullname = fullname;
		this.address = address;
		this.email = email;
		this.password = password;
		this.designation = designation;
		this.department = department;
		this.salary = salary;
		this.mobileno = mobileno;
	}
	public Employee(int id, String fullname, String address, String email, String password, String designation,
			String department, String salary, String mobileno) {
		super();
		this.id = id;
		this.fullname = fullname;
		this.address = address;
		this.email = email;
		this.password = password;
		this.designation = designation;
		this.department = department;
		this.salary = salary;
		this.mobileno = mobileno;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
	@Override
	public String toString() {
		return "Employee [id=" + id + ", fullname=" + fullname + ", address=" + address + ", email=" + email
				+ ", password=" + password + ", designation=" + designation + ", department=" + department + ", salary="
				+ salary + ", mobileno=" + mobileno + "]";
	}
	
	
	
	

}
