package com.spring.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class YogaController {
	//mapping with index.jsp
		@RequestMapping("/registration")  
		  //method to process login request
		   public ModelAndView login(HttpServletRequest request,HttpServletResponse response) {
			  String name=request.getParameter("name");
		      String message;
		     	
		      message = "Hi " +name + ".";
		      return new ModelAndView("success_registration", "message", message); 
      }
}
