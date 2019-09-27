package com.spring.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmployeeController {
	//mapping with index.jsp
		@RequestMapping("/login")  
		  //method to process login request
		   public ModelAndView login(HttpServletRequest request,HttpServletResponse response) {
			  String userName=request.getParameter("username");  
		      String password=request.getParameter("password");
		      String message;
		      
		     
		      EmployeeBean empBean=new EmployeeBean();

		      //call the checkCredetials method to validate the user credentials
		      boolean checkResult = empBean.checkCredentials(userName, password);

		        if(checkResult)
		        {
		        	message = "Hi " +userName + ".";
		        	//forward to success-login jsp page
				    return new ModelAndView("success_login", "message", message); 
		        }
		        else
		        {
		        	message = "Invalid credentials.";
		        	//forward to errorlogin jsp page
			    	return new ModelAndView("loginerror", "message", message);
		        }

      }
}
