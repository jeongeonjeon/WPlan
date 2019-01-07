package kr.co.mlec.umember.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.mlec.umember.service.UmemberService;
import kr.co.mlec.umember.vo.UmemberVO;

@Controller
public class UmemberController {

	@Autowired
	private UmemberService umemberService;
	
	@GetMapping("/member/myPage")
	public String mypage() {
		return "member/myPage";
	}

	@GetMapping("/member/cJoinForm")
	public String cjoinform() {
		return "member/cJoinForm";
	}
	@GetMapping("/member/uJoinForm")
	public String ujoinform(Model model) {
		UmemberVO umemberVO = new UmemberVO();
		model.addAttribute("umemberVO", umemberVO);
		return "member/uJoinForm";
	}
	
	@PostMapping("/member/uJoinForm") 
	public void join(UmemberVO umemberVO) {
		umemberService.insertUmember(umemberVO);
	}
	
}
