package kr.co.mlec.guide.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.mlec.guide.service.GuideService;
import kr.co.mlec.guide.vo.GuideVO;
import kr.co.mlec.umember.vo.UmemberVO;

@Controller
public class GuideController {
	
	@Autowired
	private GuideService guideService;
	
	/**
	 * 웨딩가이드 게시판 이동 
	 */
	@GetMapping("/weddingGuide")
	public String weddingGuide(Model model) {
		GuideVO guideVO = new GuideVO();
		model.addAttribute("guideVO", guideVO);
		return "weddingGuide";
	}
	
	@PostMapping("/weddingGuide")
	public ModelAndView weddingTodo(@Valid GuideVO guideVO , BindingResult result, HttpSession session, ModelAndView mav) {
		if(result.hasErrors()) {
			mav.setViewName("weddingGuide");
			return mav;
		}
		UmemberVO userVO = (UmemberVO)session.getAttribute("userVO");
		guideVO.setId(userVO.getId());
		guideService.insertInfo(guideVO);
		mav.addObject("guideVO", guideVO);
		mav.setViewName("weddingTodo");
		
		return mav;
	}
	
	@GetMapping("/weddingTodo")
	public String weddingTodo(Model model, HttpSession session) {
		UmemberVO userVO = (UmemberVO)session.getAttribute("userVO");
		String id = userVO.getId();
		GuideVO guideVO = guideService.getGuide(id);
		model.addAttribute("guideVO", guideVO);
		return "weddingTodo";
	}

}
