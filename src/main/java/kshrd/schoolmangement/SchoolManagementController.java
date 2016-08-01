package kshrd.schoolmangement;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SchoolManagementController {

		@RequestMapping(value={"/"})
		public String view(){
			System.out.println("Hello");
			return "/admin/view"; 
		}
		@RequestMapping(value={"/course"})
		public String course(){
			return "/admin/course";
		}
		@RequestMapping(value={"/generation"})
		public String generation(){
			return "/admin/generation";
		}
		@RequestMapping(value={"/dashboard"})
		public String dashboard(){
			return "/admin/dashboard";
		}
		@RequestMapping(value={"/register"})
		public String register(){
			return "/admin/register";
		}
		
}
