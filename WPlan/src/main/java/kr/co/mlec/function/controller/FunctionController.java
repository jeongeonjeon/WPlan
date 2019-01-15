package kr.co.mlec.function.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FunctionController {

	@GetMapping("/maps_pop")
	public String maps_pop() {
		return "/maps_pop";
	}
	
}
