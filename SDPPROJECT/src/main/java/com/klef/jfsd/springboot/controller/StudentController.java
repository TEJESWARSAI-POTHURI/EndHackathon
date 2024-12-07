package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController 
{
	@Autowired
	private StudentService studentService;
	
	@GetMapping("/")
	public ModelAndView home()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	@GetMapping("stureg")
	public ModelAndView stureg()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("stureg");
		return mv;
	}
	
	@PostMapping("insertstu")
    public ModelAndView insertstu(HttpServletRequest request)
    {
       String name = request.getParameter("sname");
     String gender = request.getParameter("sgender");
    
     String dept = request.getParameter("sdept");
    
     String location = request.getParameter("slocation");
     String email = request.getParameter("semail");
     String password = request.getParameter("spwd");
     String contact = request.getParameter("scontact");
     String status = "Registered";
     
       Student stu = new Student();
       stu.setName(name);
       stu.setGender(gender);
       stu.setDepartment(dept);
    
       stu.setLocation(location);
       stu.setEmail(email);
       stu.setPassword(password);
       stu.setContact(contact);
       stu.setStatus(status);
       
       String msg = studentService.StudentRegistration(stu);
       
       ModelAndView mv = new ModelAndView("regsuccess");
       mv.addObject("message", msg);
     
       return mv;
    }
	@GetMapping("stulogin")
	public ModelAndView stulogin()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("stulogin");
		return mv;
	}
	
	@GetMapping("stuhome")
	public ModelAndView stuhome()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("stuhome");
		return mv;
	}
	@GetMapping("stulogout")
	public ModelAndView stulogout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("student");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("stulogin");
		return mv;
	}
	
	@PostMapping("checkstulogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String semail =  request.getParameter("semail");
		String spwd =  request.getParameter("spwd");
		
		Student student =  studentService.checkstulogin(semail, spwd);
		
		if(student!=null)
		{
			
			HttpSession session = request.getSession();
			session.setAttribute("student", student);
			mv.setViewName("stuhome");
		}
		else
		{
			mv.setViewName("stuloginfail");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	
	@GetMapping("stusessionfail")
	public ModelAndView stusessionfail() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("stusessionfail");
		return mv;
	}
	
	@GetMapping("stuprofile")
	public ModelAndView stuprofile()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("stuprofile");
		return mv;
	}
	
	@GetMapping("events")
	public ModelAndView events()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("events");
		return mv;
	}
	
	@CrossOrigin(origins = "http://localhost:2025/")
	@GetMapping("student")
	public ModelAndView studen() {
	    return new ModelAndView("redirect:http://localhost:2025/");
	}
	
	@CrossOrigin(origins = "http://localhost:2002/overalllogins")
	@GetMapping("mainpage")
	public ModelAndView faculty() {
	    return new ModelAndView("redirect:http://localhost:2002/overalllogins");
	}
	
}
