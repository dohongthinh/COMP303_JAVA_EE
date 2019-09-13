package com.spring;

public class EmployeeManager {
	Employee emp;
	
	public void printMessage()
	{
		this.emp.printMessage();
	}
	
	//dependency injection through constructor with employee parameter
	public EmployeeManager(Employee employee)
	{
		this.emp = employee;
	}
	
}
