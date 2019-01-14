package kr.co.mlec.cmember.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.mlec.cmember.service.CmemberService;
import kr.co.mlec.cmember.vo.CmemberVO;


@Controller
public class CmemberController {
	
	@Autowired
	private CmemberService cmemberService;
	
	@GetMapping("/member/cJoinForm")
	public String cjoinform(Model model) {
		CmemberVO cmemberVO = new CmemberVO();
		model.addAttribute("cmemberVO", cmemberVO);
		return "member/cJoinForm";
	}
	 
	@PostMapping("/member/cJoinForm") 
	@ResponseBody
	public ModelAndView join(CmemberVO cmemberVO, HttpSession session) {
		cmemberService.insertCmember(cmemberVO);
		
		CmemberVO userVO = cmemberService.selectCmember(cmemberVO);
		
		ModelAndView mav = new ModelAndView();

		if(userVO == null) {
			mav.addObject("msg","??");
			mav.setViewName("redirect:/cJoinForm");
		} else {
			mav.setViewName("redirect:/");
		}
		return mav;
	}
}
