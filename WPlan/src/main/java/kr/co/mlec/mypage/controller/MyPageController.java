package kr.co.mlec.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyPageController {
	
	@GetMapping("/scrape")
	public String wish() {		
		
		
		return "/scrape";
	}

}