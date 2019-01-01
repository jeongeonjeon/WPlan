package kr.co.mlec.login.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;



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
	public ModelAndView login(MemberVO member, HttpSession session) {

		MemberVO userVO = loginService.login(member);
		ModelAndView mav = new ModelAndView();
		
		if(userVO == null) {
			mav.addObject("msg", "아이디 또는 패스워드를 잘못 입력했습니다");
			mav.setViewName("redirect:/login");
		} else {
			String dest = (String)session.getAttribute("dest");
			
			if(dest != null) {
				// interceptor에 의해 /login 접속한 경우
				mav.setViewName("redirect:" + dest);
			} else {
				// <a> 이용한 /login 접속한 경우
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
