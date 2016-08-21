package org.khmeracademy.smg_btb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SchoolManagementController {

	@RequestMapping(value = { "/", "/view", "/index" })
	public String viewIndexPage() {
		return "view";
	}

	@RequestMapping(value = { "/admin/dashboard"})
	public String view() {
		return "/admin/dashboard";
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

	@RequestMapping(value = { "/instructor/dashboard" })
	public String instructor() {
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

}
