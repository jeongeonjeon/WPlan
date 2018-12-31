package kr.co.mlec.function.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FunctionController {

	@GetMapping("/jsp/wish")
	public String wish() {
		return "/wish";
	}

	
}
