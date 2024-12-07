package com.klef.jfsd.springboot.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.AdminEvent;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.AdminEventService;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;

	@Autowired
	private AdminEventService eventService;

	@Autowired
	private StudentService studentService;

	@GetMapping("/")
	public ModelAndView main() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mainloader");
		return mv;
	}

	@GetMapping("/about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about");
		return mv;
	}

	@GetMapping("overalllogins")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("totallogin");
		return mv;
	}

	@GetMapping("adminlogin")
	public ModelAndView adminlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}

	@GetMapping("adminhome")
	public ModelAndView adminhome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		return mv;
	}

	@PostMapping("checkadminlogin")
	public ModelAndView checkemplogin(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String aname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		Admin admin = adminService.checkadminlogin(aname, apwd);

		if (admin != null) {
			HttpSession session = request.getSession();
			session.setAttribute("Admin", admin);

			// employee id session variable
			mv.setViewName("adminhome");
		} else {
			mv.setViewName("adminloginfail");
			mv.addObject("message", "login failed");
		}
		return mv;
	}

	@GetMapping("adminloginfail")
	public ModelAndView adminloginfail() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminloginfail");
		return mv;
	}

	@GetMapping("addevent")
	public ModelAndView addevent() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("regevents");
		return mv;
	}

	@GetMapping("registerstudent")
	public ModelAndView registerstudent() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("regstudent");
		return mv;
	}

	@PostMapping("insertevent")
	public ModelAndView insertemp(HttpServletRequest request) {

		ModelAndView mv = new ModelAndView();
		String name = request.getParameter("ename");
		String location = request.getParameter("elocation");
		String points = request.getParameter("epoints");
		String category = request.getParameter("ecategory");
		String incharge = request.getParameter("eincharge");

		AdminEvent event = new AdminEvent();
		event.setEname(name);
		event.setElocation(location);
		event.setEpoints(points);
		event.setEcategory(category);
		event.setEincharge(incharge);

		eventService.addevent(event);

		mv.setViewName("eventregsuccess");
		return mv;

	}

	@PostMapping("insertstudent")
	public ModelAndView insertstudent(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();

		String id = request.getParameter("sid");
		String name = request.getParameter("sname");

		Student student = new Student();
		student.setSid(id);
		student.setSname(name);

		studentService.addStudent(student);

		mv.setViewName("studentaddedsuccess");
		return mv;

	}

	@GetMapping("viewallevents")
	public ModelAndView viewallevents() {
		ModelAndView mv = new ModelAndView();
		List<AdminEvent> eventlist = eventService.viewevents();
		mv.setViewName("viewallevents");
		mv.addObject("eventlist", eventlist);
		return mv;
	}

	@GetMapping("viewallstudents")
	public ModelAndView viewallstudents() {
		ModelAndView mv = new ModelAndView();
		List<Student> studentlist = studentService.viewallStudents();
		mv.setViewName("viewallstudents");
		mv.addObject("studentlist", studentlist);
		return mv;
	}

	@GetMapping("adminlogout")
	public ModelAndView adminlogout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("admin ");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("totallogin");
		return mv;
	}

	@CrossOrigin(origins = "http://localhost:2025/stulogin")
	@GetMapping("student")
	public ModelAndView studen() {
		return new ModelAndView("redirect:http://localhost:2025/stulogin");
	}

	@CrossOrigin(origins = "http://localhost:1121/")
	@GetMapping("faculty")
	public ModelAndView faculty() {
		return new ModelAndView("redirect:http://localhost:1121/");
	}

	@CrossOrigin(origins = "http://localhost:1121/facultylogin")
	@GetMapping("adminaddeventphoto")
	public ModelAndView photo() {
		return new ModelAndView("redirect:http://localhost:1121/facultylogin ");
	}

	@PostMapping("/addStudentfile")
	public ResponseEntity<String> addSingleStudent(

			@RequestParam(required = false) String sid,

			@RequestParam(required = false) String sname,

			@RequestParam(required = false) MultipartFile studentFile, RedirectAttributes redirectAttributes) {

		try {
			if (sid != null && sname != null && !sname.isEmpty()) {
				Student student = new Student();
				student.setSid(sid);
				student.setSname(sname);
				studentService.addStudent(student);
				redirectAttributes.addFlashAttribute("message", "Single student added successfully!");
			} else if (studentFile != null && !studentFile.isEmpty()) {
				try (BufferedReader reader = new BufferedReader(new InputStreamReader(studentFile.getInputStream()))) {
					String line;
					while ((line = reader.readLine()) != null) {
						String[] data = line.split(",");
						Student student = new Student();
						student.setSid(sid);
						// student.set(Integer.parseInt(data[0])); student.setSname(data[1]);
						studentService.addStudent(student);
					}
				}
				redirectAttributes.addFlashAttribute("message", "Students uploaded successfully from file!");
			}
		} catch (IOException e) {
			redirectAttributes.addFlashAttribute("message", "File upload failed!");
			return ResponseEntity.badRequest().body("Error processing file");
		}

		return ResponseEntity.ok("Success");
	}

}
