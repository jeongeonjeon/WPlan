package kr.co.mlec.umember.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.mlec.umember.service.LoginService;
import kr.co.mlec.umember.vo.UmemberVO;



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
	
	@GetMapping("/login")
	public String loginForm() {
		return "login/loginForm";
	}
	
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
			System.out.println("login성공");
			return "login";
		}else {
			return "fail";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("userVO");
		System.out.println("로그아웃");
		return "redirect:/";
	}
	
	/*public String login(@Valid @ModelAttribute("memberVO") UmemberVO memberVO,Model model, HttpSession session) {

		UmemberVO userVO = loginService.login(memberVO);
		System.out.println(userVO);

		String msg = "";
		session.invalidate();
		if(userVO != null) {
			// �α��� ����
			msg = "����";
			model.addAttribute("msg", msg);
			session.setAttribute("userVO", userVO);
			System.out.println(msg+ " : "+ userVO.toString());
			
			return "redirect:/";
		} else {
			// �α��� ����
			msg = "���̵� �Ǵ� �н����带 �߸��Է��ϼ̽��ϴ�";
			model.addAttribute("msg", msg);
			return "redirect:/login";
		}
	}*/
	
	/*@RequestMapping("/logout")
	public String logout(SessionStatus sessionStatus) {		
		
//		System.out.println(sessionStatus.isComplete());
		sessionStatus.setComplete();
//		System.out.println(sessionStatus.isComplete());
		
		return "redirect:/";
	}*/
}
