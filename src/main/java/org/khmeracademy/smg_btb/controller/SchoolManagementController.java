package org.khmeracademy.smg_btb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SchoolManagementController {

		@RequestMapping(value={"/","/dashboard"})
		public String view(){
			return "/admin/dashboard"; 
		}
		@RequestMapping(value={"/course"})
		public String course(){
			return "/admin/course";
		}
		@RequestMapping(value={"/generation"})
		public String generation(){
			return "/admin/generation";
		}
		@RequestMapping(value={"/class"})
		public String classs(){
			return "/admin/class";
		}
		@RequestMapping(value={"/register"})
		public String register(){
			return "/admin/register";
		}
		@RequestMapping(value={"/studentlist"})
		public String studentList(){
			return "/admin/studentlist";
		}
		@RequestMapping(value={"/subject"})
		public String subject(){
			return "/admin/subject";
		}
		@RequestMapping(value={"/staff"})
		public String staff(){
			return "/admin/staff";
		}
		@RequestMapping(value={"/studentenroll"})
		public String studentenroll(){
			return "/admin/studentenroll";
		}
		@RequestMapping(value={"/instructorenroll"})
		public String instructorenroll(){
			return "/admin/instructorenroll";
		}
		@RequestMapping(value={"/promote"})
		public String promote(){
			return "/admin/promote";
		}
		@RequestMapping(value={"/student"})
		public String student(){
			return "/student/dashboard";
		}
		@RequestMapping(value={"/documents"})
		public String documents(){
			return "/student/documents";
		}
		@RequestMapping(value={"/instructor"})
		public String instructor(){
			return "/instructor/dashboard";
		}
		@RequestMapping(value={"/addscore"})
		public String addScore(){
			return "/instructor/addscore";
		}
		@RequestMapping(value={"/monthlyresult"})
		public String monthlyresult(){
			return "/instructor/monthlyresult";
		}
		@RequestMapping(value={"/view"})
		public String viewIndexPage(){
			return "/admin/view";
		}
		
		
}
