package org.khmeracademy.smg_btb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SchoolManagementController {

	@RequestMapping(value = { "/admin/dashboard"})
	public String view() {
		return "/admin/dashboard";
	}
	
	@RequestMapping(value = { "/login","/"})
	public String login() {
		return "login";
	}

	@RequestMapping(value = { "/admin/course" })
	public String course() {
		return "/admin/course";
	}

	@RequestMapping(value = { "/admin/generation" })
	public String generation() {
		return "/admin/generation";
	}

	@RequestMapping(value = { "/admin/class" })
	public String classs() {
		return "/admin/class";
	}

	@RequestMapping(value = { "/admin/register" })
	public String register() {
		return "/admin/register";
	}

	@RequestMapping(value = { "/admin/student-list" })
	public String studentList() {
		return "/admin/studentlist";
	}

	@RequestMapping(value = { "/admin/subject" })
	public String subject() {
		return "/admin/subject";
	}

	@RequestMapping(value = { "/admin/staff" })
	public String staff() {
		return "/admin/staff";
	}

	@RequestMapping(value = { "/admin/student-enroll" })
	public String studentenroll() {
		return "/admin/studentenroll";
	}

	@RequestMapping(value = { "/admin/instructor-enroll" })
	public String instructorenroll() {
		return "/admin/instructorenroll";
	}

	@RequestMapping(value = { "/admin/promote" })
	public String promote() {
		return "/admin/promote";
	}

	@RequestMapping(value = { "/admin/student-promote" })
	public String studentPromote() {
		return "/admin/studentpromotion";
	}

	@RequestMapping(value = { "/admin/monthly-result" })
	public String mothlyResult() {
		return "/admin/monthlyresult";
	}

	/**
	 * author mengtang
	 * add model map for get user principal
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/instructor/dashboard" })
	public String instructor(ModelMap model) {
		 model.addAttribute("user", getPrincipal());
		return "/instructor/dashboard";
	}

	@RequestMapping(value = { "/instructor/add-score" })
	public String addscore() {
		return "/instructor/addscore";
	}

	@RequestMapping(value = { "/intructor/addscore" })
	public String addScore() {
		return "/instructor/addscore";
	}

	@RequestMapping(value = { "/instructor/monthlyresult" })
	public String monthlyresult() {
		return "/instructor/monthlyresult";
	}

	@RequestMapping(value = { "/student/myprofile" })
	public String myprofile() {
		return "/student/myprofile";
	}

	@RequestMapping(value = { "/student/monthlyresults" })
	public String monthlyresults() {
		return "/student/monthlyresults";
	}

	@RequestMapping(value = { "/student/dashboard" })
	public String student() {
		return "/student/dashboard";
	}

	@RequestMapping(value = { "/student/documents" })
	public String documents() {
		return "/student/documents";
	}
	
	/**
	 * author mengtang
	 * page logout
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){    
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/login?logout";
    }
	
	/**
	 * author mengtang
	 * get principal from user
	 * @return
	 */
	private String getPrincipal(){
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
 
        if (principal instanceof UserDetails) {
            userName = ((UserDetails)principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }

}
