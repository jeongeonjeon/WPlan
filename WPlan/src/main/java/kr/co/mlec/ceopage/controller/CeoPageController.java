package kr.co.mlec.ceopage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CeoPageController {
	
	@GetMapping("/calendar")
	public String calendar() {
		return "/calendar";
	}

}
