package com.empcrud.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.empcrud.dao.EmpDao;
import com.empcrud.dao.EmployeeDao;
import com.empcrud.dao.UserDao;
import com.empcrud.model.Emp;
import com.empcrud.model.Employee;
import com.empcrud.model.User;


import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
	
	@Autowired
	private UserDao userDao;
	private EmpDao empDao;
//	private EmployeeDao employeeDao;
	
	@RequestMapping(path = "/home")
	public String home(Model m) {

		return "home";
	}

	@RequestMapping(path = "/addEmployee")
	public String addEmp() {
		return "addEmployee";
	}
	
	@RequestMapping(path = "/allEmp")
	public String allEmployees(Model m) {

		List<Emp> list = empDao.getAllEmp();
		m.addAttribute("empList", list);
		return "allEmp";
	}
//	@RequestMapping(path = "/createEmp", method = RequestMethod.POST)
//	public String createEmp(@ModelAttribute Employee employee, HttpSession session) {
//		
//		System.out.println(employee);
//		employeeDao.saveEmployee(employee);
//		session.setAttribute("msg", "Added Sucessfully");
//		return "redirect:/addEmployee";
//	}

	@RequestMapping(path = "/createEmp", method = RequestMethod.POST)
	public String createEmp(@ModelAttribute("emp") Emp emp, HttpSession session) {
		System.out.println(emp);

		int i = empDao.saveEmp(emp);
		session.setAttribute("msg", "Register Sucessfully");
		return "redirect:/addEmployee";
	}
//	@RequestMapping(path = "/addproduct", method = RequestMethod.POST)
//	public String AddProduct(@ModelAttribute Products products, HttpSession session) {
//		System.out.println(products);
//
//		int i = productDao.saveproduct(products);
//		session.setAttribute("msg", "Product Added Sucessfully");
//		return "redirect:/AddProduct";
//	}

//	@RequestMapping(path = "/editEmp/{id}")
//	public String editEmp(@PathVariable int id, Model m) {
//
//		Emp emp = empDao.getEmpById(id);
//		m.addAttribute("emp", emp);
//		return "edit_emp";
//	}
//
//	@RequestMapping(path = "/updateEmp", method = RequestMethod.POST)
//	public String updateEmp(@ModelAttribute Emp emp, HttpSession session) {
//
//		empDao.update(emp);
//		session.setAttribute("msg", "Update Sucessfully");
//		return "redirect:/home";
//	}
//
//	@RequestMapping("/deleteEmp/{id}")
//	public String deleteEmp(@PathVariable int id, HttpSession session) {
//		empDao.deleteEmp(id);
//		session.setAttribute("msg", "Emp Delete Sucesfully");
//		return "redirect:/home";
//	}

	@RequestMapping("/register")
	public String registerPage() {
		return "register";
	}

	@RequestMapping("/login")
	public String loginPage() {
		return "login";
	}

	@RequestMapping(path = "/createUser", method = RequestMethod.POST)
	public String register(@ModelAttribute User user, HttpSession session) {

		System.out.println(user);

		userDao.saveUser(user);
		session.setAttribute("msg", "User Register sucessfully");

		return "redirect:/register";
	}

	@RequestMapping(path = "/userlogin", method = RequestMethod.POST)
	public String login(@RequestParam("email") String em, @RequestParam("password") String pwd, HttpSession session) {

		User user = userDao.loginUser(em, pwd);

		if (em.equals("admin@gmail.com") && pwd.equals("admin")) {
			session.setAttribute("loginuser", user);

			return "AdminHome";
		}

		else if (user != null) {
			session.setAttribute("loginuser", user);
			return "profile";
		}

		else {
			session.setAttribute("msg", "invalid email and password");
			return "redirect:/login";
		}

	}

	@RequestMapping("/myProfile")
	public String myProfile() {
		return "profile";
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {

		HttpSession session = request.getSession();

		session.removeAttribute("loginuser");
		session.setAttribute("msg", "Logout Sucsssfully");
		return "login";
	}

}
