package kr.co.mlec.umember.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.co.mlec.umember.service.LoginService;
import kr.co.mlec.umember.vo.UmemberVO;



@SessionAttributes("userVO")
@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	/*@GetMapping("/login")
	public String loginForm(Model model) {
		
		UmemberVO memberVO = new UmemberVO();
		model.addAttribute("memberVO", memberVO);
		
		return "login/loginForm";
	}
	*/
	@PostMapping("/login")
	@ResponseBody
	public String login(@RequestParam String id , @RequestParam String password, HttpSession session) {
		System.out.println("login");
		UmemberVO user = new UmemberVO();
		user.setId(id);
		user.setPassword(password);
		UmemberVO userVO = loginService.login(user);
		System.out.println(userVO);
		
		if(userVO != null) {
			session.setAttribute("userVO", userVO);
			System.out.println("세션등록");
			return "login";
		}else {
			return "fail";
		}
		
		
	}
	/*public String login(@Valid @ModelAttribute("memberVO") UmemberVO memberVO,Model model, HttpSession session) {

		UmemberVO userVO = loginService.login(memberVO);
		System.out.println(userVO);

		String msg = "";
		session.invalidate();
		if(userVO != null) {
			// 로그인 성공
			msg = "성공";
			model.addAttribute("msg", msg);
			session.setAttribute("userVO", userVO);
			System.out.println(msg+ " : "+ userVO.toString());
			
			return "redirect:/";
		} else {
			// 로그인 실패
			msg = "아이디 또는 패스워드를 잘못입력하셨습니다";
			model.addAttribute("msg", msg);
			return "redirect:/login";
		}
	}*/
	
	@RequestMapping("/logout")
	public String logout(SessionStatus sessionStatus) {		
		
//		System.out.println(sessionStatus.isComplete());
		sessionStatus.setComplete();
//		System.out.println(sessionStatus.isComplete());
		
		return "redirect:/";
	}
}
