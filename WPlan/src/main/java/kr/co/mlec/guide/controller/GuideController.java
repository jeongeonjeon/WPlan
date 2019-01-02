package kr.co.mlec.guide.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.mlec.guide.service.GuideService;
import kr.co.mlec.guide.vo.GuideVO;

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
	public String weddingTodo(@Valid GuideVO guideVO , BindingResult result) {
		if(result.hasErrors()) {
			return "weddingGuide";
		}
		
		return "weddingTodo";
	}
	

}
