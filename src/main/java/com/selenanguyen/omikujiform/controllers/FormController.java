package com.selenanguyen.omikujiform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/omikuji")
public class FormController {
	@RequestMapping() 
	public String home(){
		System.out.println("testing it out");
		return "form.jsp";
	}
	
	// http://localhost:8080/omikuji
	@PostMapping("/post")
	public String form(
			@RequestParam(value="quantity") String quantity,
			@RequestParam(value="cityname") String cityname,
			@RequestParam(value="personname") String personname,
			@RequestParam(value="hobby") String hobby,
			@RequestParam(value="type") String type,
			@RequestParam(value="quote") String quote,
			HttpSession session) {
		System.out.println(quantity);
		System.out.println(cityname);
		System.out.println(personname);
		System.out.println(hobby);
		System.out.println(type);
		System.out.println(quote);
		session.setAttribute("quantity", quantity);
		session.setAttribute("cityname", cityname);
		session.setAttribute("personname", personname);
		session.setAttribute("hobby", hobby);
		session.setAttribute("type", type);
		session.setAttribute("quote", quote);
		
		return "redirect:/omikuji/show";
	}
	
	// http://localhost:8080/omikuji/show
	@RequestMapping("/show")
	public String show(HttpSession session, Model model) {
		model.addAttribute("quantity", session.getAttribute("quantity"));
		model.addAttribute("cityname", session.getAttribute("cityname"));
		model.addAttribute("personname", session.getAttribute("personname"));
		model.addAttribute("hobby", session.getAttribute("hobby"));
		model.addAttribute("type", session.getAttribute("type"));
		model.addAttribute("quote", session.getAttribute("quote"));
		
		return "show.jsp";
	}

}
