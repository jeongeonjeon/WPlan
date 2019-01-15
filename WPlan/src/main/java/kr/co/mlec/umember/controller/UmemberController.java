package kr.co.mlec.umember.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.mlec.umember.service.UmemberService;
import kr.co.mlec.umember.vo.UmemberVO;

@Controller
public class UmemberController {

	@Autowired
	private UmemberService umemberService;
	
/*	@GetMapping("/member/myPage")
	public ModelAndView mypage(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		UmemberVO user = (UmemberVO)session.getAttribute("userVO");
		
		if(user.getType()== "C") { //사업자인 경우
			
			
			
		}else if (user.getType() == "U"){ //일반회원인 경우
			UmemberVO userVO = umemberService.myPage(user.getId());
		}
		
		return null;
	}
	
	*/
	
	@GetMapping("/member/myPage")
	public String mypage() {
		return "member/myPage";
	}
	
	
	

	@GetMapping("/member/uJoinForm")
	public String ujoinform(Model model) {
		UmemberVO umemberVO = new UmemberVO();
		model.addAttribute("umemberVO", umemberVO);
		return "member/uJoinForm";
	}
	
	@PostMapping("/member/uJoinForm") 
	@ResponseBody
	public ModelAndView join(UmemberVO umemberVO, HttpSession session) {
		umemberService.insertUmember(umemberVO);
		
		UmemberVO userVO = umemberService.selectUmember(umemberVO);
		
		ModelAndView mav = new ModelAndView();

		if(userVO == null) {
//			mav.addObject("msg","����ִ� �׸��� ä���ּ���");
			mav.setViewName("redirect:/uJoinForm");
		} else {
			mav.setViewName("redirect:/");
		}
		return mav;
	}
	
	
}

