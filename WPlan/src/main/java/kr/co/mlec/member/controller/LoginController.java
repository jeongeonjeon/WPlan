package kr.co.mlec.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import kr.co.mlec.umember.service.LoginService;
import kr.co.mlec.umember.vo.UmemberVO;



@SessionAttributes("userVO")
@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	@GetMapping("/login")
	public String loginForm() {
		
		return "login/login";
	}
	
	@PostMapping("/login")
	public ModelAndView login(UmemberVO member, HttpSession session) {

		UmemberVO userVO = loginService.login(member);
		ModelAndView mav = new ModelAndView();
		
		if(userVO == null) {
			mav.addObject("msg", "���̵� �Ǵ� �н����带 �߸� �Է��߽��ϴ�");
			mav.setViewName("redirect:/login");
		} else {
			String dest = (String)session.getAttribute("dest");
			
			if(dest != null) {
				// interceptor�� ���� /login ������ ���
				mav.setViewName("redirect:" + dest);
			} else {
				// <a> �̿��� /login ������ ���
				mav.setViewName("redirect:/");
			}
			mav.addObject("userVO", userVO);
			session.removeAttribute("dest");
		}
	
		return mav;
	}
	
	@RequestMapping("/logout")
	public String logout(SessionStatus sessionStatus) {		
		
//		System.out.println(sessionStatus.isComplete());
		sessionStatus.setComplete();
//		System.out.println(sessionStatus.isComplete());
		
		return "redirect:/";
	}
}
