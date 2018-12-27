package kr.co.mlec.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller 
public class ProductController {
	
	@GetMapping("/jsp/dressType")
	public String dress() {
		return "/dressType";
	}

}
