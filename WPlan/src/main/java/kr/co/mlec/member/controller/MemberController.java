package kr.co.mlec.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {

	@GetMapping("/jsp/member/myPage")
	public String mypage() {
		return "member/myPage";
	}

	@GetMapping("/jsp/member/cJoinForm")
	public String cjoinform() {
		return "member/cJoinForm";
	}
	
	@GetMapping("/jsp/member/uJoinForm")
	public String ujoinform() {
		return "member/uJoinForm";
	}
	
}
