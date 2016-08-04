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
		@RequestMapping(value={"/index"})
		public String dashboard(){
			return "/admin/index";
		}
		@RequestMapping(value={"/register"})
		public String register(){
			return "/admin/register";
		}
		@RequestMapping(value={"/view"})
		public String me(){
			return "/admin/view";
		}
		
		private void sysout() {
			// TODO Auto-generated method stub

		}
		
}
