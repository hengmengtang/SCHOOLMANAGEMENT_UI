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
}
