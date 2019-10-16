package com.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class EmployeeTest {

	private static EntityManagerFactory factory;
	public static void main(String[] args) {
		
		factory = Persistence.createEntityManagerFactory("Week5_JPA_Employee");
	    EntityManager em = factory.createEntityManager();
	    
	    //query to fetch rows from employee table
	    Query query = em.createQuery("select e from Employee e");
	    
	    //assign the list of employees into list object
	    List<Employee> employeeList = query.getResultList();
	    
	    //print list of employees 
	    for (Employee employee : employeeList) {
	      System.out.println(employee);
	    }

	}

}
