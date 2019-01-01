package kr.co.mlec.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {

	@GetMapping("/member/myPage")
	public String mypage() {
		return "member/myPage";
	}

	@GetMapping("/member/cJoinForm")
	public String cjoinform() {
		return "member/cJoinForm";
	}
	
	@GetMapping("/member/uJoinForm")
	public String ujoinform() {
		return "member/uJoinForm";
	}
	
}
