package kr.co.mlec.guide.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.mlec.guide.vo.GuideVO;

@Controller
public class GuideController {
	
	/**
	 * 웨딩가이드 게시판 이동 
	 */
	@GetMapping("/weddingGuide")
	public String weddingGuide(Model model) {
		GuideVO guideVO = new GuideVO();
		model.addAttribute("guideVO", guideVO);
		return "weddingGuide";
	}
	

}
