package com.jpa;

import java.io.Serializable;
import java.lang.String;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: Employee
 *
 */
@Entity
public class Employee implements Serializable{	
	private static final long serialVersionUID = 1L;
	@Id
	private int empId;
	private String empName;
	private String jobTitle;
	private double salary;
	
	public Employee() {
		super();
	}   
	public int getEmpId() {
		return this.empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}   
	public String getEmpName() {
		return this.empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}   
	public String getJobTitle() {
		return this.jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}   
	public double getSalary() {
		return this.salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}
	
	public String toString() {
		return "Employee [Id: "+empId+" Name:" + empName + ",    Job:" + jobTitle + " , Salary: "+ salary + "]";
			}

   
}
