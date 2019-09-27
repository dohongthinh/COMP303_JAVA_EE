package spring.mvc.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.ModelAndView;

//Controller annotations to define a controller
@Controller
public class LoginController {
	//mapping with index.jsp
	@RequestMapping("/login")  
	  //method to process login request
	   public ModelAndView login(HttpServletRequest request,HttpServletResponse response) {
		  String userName=request.getParameter("username");  
	      String password=request.getParameter("password");
	      String message;
	      
	      //System.out.print(userName);
	      //System.out.print(password);
	      
	      // To get all spring beans are managed in this context. 
	      WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(request.getServletContext());
	      
	      //define Bean class objects to access properties and methods of bean class
	      LoginBean loginBean=new LoginBean();

	      //call the checkCredetials method to validate the user credentials
	      boolean checkResult = loginBean.checkCredentials(userName, password);
	      System.out.print(checkResult);

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
		    	return new ModelAndView("errorlogin", "message", message);
	        }
	      /*if(userName != null && !userName.equals("") && userName.equals("Max") && 
	    		  password != null && !password.equals("") && password.equals("Max123")){
	    	  message = "Welcome " +userName + ".";
		      return new ModelAndView("success_login", "message", message);  
	 
	      }
	      else
	      {
	    	  message = "Invalid credentials.";
	    	  return new ModelAndView("errorlogin", "message", message);
	      }*/
	   }

}
