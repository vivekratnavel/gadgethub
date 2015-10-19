package edu.osu.cse5234.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.osu.cse5234.model.Order;

@Controller
@RequestMapping("/")
public class HomeController {
	@RequestMapping(method = RequestMethod.GET)
    public String purchse(HttpServletRequest request, HttpServletResponse response) throws Exception {  
		request.setAttribute("about", false);
		request.setAttribute("home", true);
		request.setAttribute("contact", false);
		return "home";
    }
	
	  @RequestMapping(path = "/aboutus", method = RequestMethod.GET)
      public String printHelloNew(HttpServletRequest request, HttpServletResponse response) throws Exception {
		  request.setAttribute("about", true);
		  request.setAttribute("home", false);
		  request.setAttribute("contact", false);		  
		  return "AboutUs";  
	  }
	  
	  @RequestMapping(path = "/contactus", method = RequestMethod.GET)
      public String printHelloNew1(HttpServletRequest request, HttpServletResponse response) throws Exception {
		  request.setAttribute("about", false);
		  request.setAttribute("home", false);
		  request.setAttribute("contact", true); 
		  return "contactus";  
      }
	
}
