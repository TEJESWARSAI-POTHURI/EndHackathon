package com.klef.jfsd.sdp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.sdp.model.Event;
import com.klef.jfsd.sdp.model.Faculty;
import com.klef.jfsd.sdp.service.EventService;
import com.klef.jfsd.sdp.service.FacultyService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class FacultyController {
	@Autowired
	private FacultyService facultyService;

	@Autowired
	private EventService eventService;

	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}

	@GetMapping("facultyreg")
	public ModelAndView facultyreg() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("facultyreg");
		return mv;
	}

	@PostMapping("insertfaculty")
	public ModelAndView insertfaculty(HttpServletRequest request) {
		String name = request.getParameter("ename");
		String gender = request.getParameter("egender");
		String dob = request.getParameter("edob");
		String dept = request.getParameter("edept");
		double salary = Double.parseDouble(request.getParameter("esalary"));
		String email = request.getParameter("eemail");
		String password = request.getParameter("epwd");
		String contact = request.getParameter("econtact");

		Faculty faculty = new Faculty();
		faculty.setName(name);
		faculty.setGender(gender);
		faculty.setDepartment(dept);
		faculty.setDateofbirth(dob);
		faculty.setSalary(salary);
		faculty.setEmail(email);
		faculty.setPassword(password);
		faculty.setContact(contact);

		String msg = facultyService.FacultyRegistration(faculty);

		ModelAndView mv = new ModelAndView("regsuccess");
		mv.addObject("message", msg);

		return mv;

	}

	@PostMapping("checkfacultylogin")
	public ModelAndView checkFacultyLogin(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		String eemail = request.getParameter("eemail");
		String epassword = request.getParameter("epassword");

		Faculty faculty = facultyService.checkFacultyLogin(eemail, epassword);

		if (faculty != null) {
			HttpSession session = request.getSession();
			session.setAttribute("faculty", faculty);
			mv.setViewName("facultyhome");
		} else {
			mv.setViewName("facultyloginfail");
			mv.addObject("message", "Login Failed!");
		}

		return mv;
	}

	@GetMapping("facultylogin")
	public ModelAndView facultylogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("facultylogin");
		return mv;
	}

	@GetMapping("facultyhome")
	public ModelAndView facultyhome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("facultyhome");
		return mv;
	}

	@GetMapping("facultylogout")
	public ModelAndView facultylogout(HttpServletRequest request) {
		HttpSession session = request.getSession();

		session.removeAttribute("faculty");

		ModelAndView mv = new ModelAndView();
		mv.setViewName("facultylogin");
		return mv;
	}

	@GetMapping("facultysessionfail")
	public ModelAndView facultysessionfail() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("facultysessionfail");
		return mv;
	}

	@CrossOrigin(origins = "http://localhost:2002/overalllogins")
	@GetMapping("mainpage")
	public ModelAndView faculty() {
		return new ModelAndView("redirect:http://localhost:2002/overalllogins");
	}

	@GetMapping("viewallevents")
	public ModelAndView viewallevents() {
		ModelAndView mv = new ModelAndView();
		List<Event> eventlist = eventService.viewallevents();
		mv.setViewName("viewallevents");
		mv.addObject("eventlist", eventlist);
		return mv;

	}

}
