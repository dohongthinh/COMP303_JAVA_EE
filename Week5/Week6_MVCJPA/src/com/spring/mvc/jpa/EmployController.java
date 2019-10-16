package com.spring.mvc.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mvc.jpa.Employee;

@Controller
public class EmployController {
	private static EntityManagerFactory factory;
	private static EntityManager em;
	
	@RequestMapping("/employee")  
	   public ModelAndView view(HttpServletRequest request,HttpServletResponse response)
	   {
		factory = Persistence.createEntityManagerFactory("Week6_MVCJPA");
	    em = factory.createEntityManager();
	    
	 
	    int empId=Integer.parseInt(request.getParameter("empId"));
	    String empName=request.getParameter("empName");
	    String jobTitle=request.getParameter("jobTitle");
	    double salary=Double.parseDouble(request.getParameter("salary"));
	  
	    
		    em.getTransaction().begin();
		    Employee emp = new Employee(); 
		    emp.setEmpId(empId);
		    emp.setEmpName(empName);
		    emp.setJobTitle(jobTitle);
		    emp.setSalary(salary);
		    
		    em.persist(emp);
		    em.getTransaction().commit();
		    
		    Query query = em.createQuery("select e from Employee e");
		    List<Employee> employeeList = query.getResultList();
		   
		    em.close();
		    return new ModelAndView("emp_print","employeeList",employeeList); 
    }
	@RequestMapping("/emp_add")
	public ModelAndView add(HttpServletRequest request, HttpServletResponse response)
	{
		factory = Persistence.createEntityManagerFactory("Week6_MVCJPA");
	    EntityManager em = factory.createEntityManager();
		
	    int empId=Integer.parseInt(request.getParameter("empId"));
	    double salary=Double.parseDouble(request.getParameter("salary"));
	
		    em.getTransaction().begin();
		    Employee emp = new Employee(); 
		    emp=em.find(Employee.class, empId);
		    emp.setSalary(salary);
		    em.persist(emp);
		    em.getTransaction().commit();
	        //em.close();
	        
	        Query query = em.createQuery("select e from Employee e");
		    List<Employee> employeeList = query.getResultList();
		    
		    em.close();
		    return new ModelAndView("emp_print","employeeList",employeeList); 
	        
	       
	}
}
