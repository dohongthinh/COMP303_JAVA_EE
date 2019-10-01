package com.spring.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class YogaController {
	//mapping with index.jsp
	/*
		@RequestMapping("/registration")  
		  //method to process login request
		   public ModelAndView registration(HttpServletRequest request,HttpServletResponse response) {
			  String name=request.getParameter("name");
			  String email=request.getParameter("email");
			  String contactNumber=request.getParameter("contactNumber");
			  String age=request.getParameter("age");
			  String city=request.getParameter("city");
			  String gender=request.getParameter("gender");
			  String batch=request.getParameter("batch");
			  String message;
		     	
		      message = "Hi " +name + ".";
		      return new ModelAndView("success_registration"); 
      }
		
	
		 @RequestMapping(value = "/", method = RequestMethod.GET)
		    public ModelAndView showForm() {
		        return new ModelAndView("employeeHome", "employee", new YogaBean());
		    }
		 */
		   @RequestMapping(value = "/registration")
		   public ModelAndView registration(
				   @RequestParam(value = "name")String name,
				   @RequestParam(value = "email")String email,
				   @RequestParam(value = "contactNumber")String contactNumber,
				   @RequestParam(value = "age")String age,
				   @RequestParam(value = "city")String city,
				   @RequestParam(value = "gender")String gender,
				   @RequestParam(value = "batch")String batch,
		   		   @RequestParam(value = "yogaType")String[] yogaTypes){	
			   ModelAndView mview = new ModelAndView("success_registration");
			   String yogaType = "";
				mview.addObject("name", name);
				mview.addObject("email", email);
				mview.addObject("contactNumber", contactNumber);
				mview.addObject("age", age);
				mview.addObject("city", city);
				mview.addObject("gender", gender);
				mview.addObject("batch", batch);
				for(String yoga : yogaTypes)
				{
					yogaType = yogaType+", "+ yoga; 
				}
				mview.addObject("yogaType",yogaType);
				return mview;
		    }
}
