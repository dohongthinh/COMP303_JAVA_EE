package assignment_1;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class YogaController {
	//mapping with index.jsp
		 @RequestMapping(value="/registration")  
		 //method to process registration request
		 public ModelAndView registration(HttpServletRequest request,HttpServletResponse response) {
		 String name=request.getParameter("name");  
		 String message = "Welcome "+ name;
		 return new ModelAndView("view_registration","message",message);
		}
}
