package kr.co.mlec.umember.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.mlec.cmember.service.CmemberService;
import kr.co.mlec.cmember.vo.CmemberVO;
import kr.co.mlec.umember.service.UmemberService;
import kr.co.mlec.umember.vo.UmemberVO;

@Controller
public class UmemberController {

	@Autowired
	private UmemberService umemberService;
	
	@Autowired
	private CmemberService cmemberService;
	
//	@RequestMapping(value="/member/myPage", method = RequestMethod.GET)
	@GetMapping("/member/myPage")
	public ModelAndView mypage(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		
		CmemberVO cuser = (CmemberVO)session.getAttribute("cuserVO");
		
		mav.setViewName("member/myPage");
		
		if(cuser != null) { //사업자인 경우
			
			CmemberVO userVO = cmemberService.myPage(cuser.getId());
			mav.addObject("member", userVO);
			return mav;
		}else {//일반회원인 경우 
			UmemberVO user = (UmemberVO)session.getAttribute("userVO");
			UmemberVO userVO = umemberService.myPage(user.getId());
			mav.addObject("member", userVO);
			return mav;
		}
	}
	
	
	
	/*@GetMapping("/member/update")
	public String updateMypage() {
		
		
		return "member/updateForm";
	}
	*/
	
	/**
	 *회원 탈퇴하는 메소드 
	 */
	@ResponseBody
	@DeleteMapping(value = {"/{id}/{type}"})
	public void deleteU(@PathVariable("id") String id, @PathVariable("type") String type, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		if(type.equals("U")) { //일반회원인 경우
			umemberService.deleteU(id);
			
		}else {
			cmemberService.deleteC(id);
		}
		//세션영역 비우기
		session.removeAttribute("user");
		if(type.equals("C")) {
			session.removeAttribute("cuser");
		}
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

