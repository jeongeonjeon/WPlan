package kr.co.mlec.guide.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
	public ModelAndView weddingTodo(@Valid GuideVO guideVO , BindingResult result, HttpServletRequest request, ModelAndView mav) {
		if(result.hasErrors()) {
			mav.setViewName("weddingGuide");
			return mav;
		}
		HttpSession session = request.getSession();
		UmemberVO user = (UmemberVO)session.getAttribute("userVO");
		guideVO.setId(user.getId());
		guideService.insertInfo(guideVO);
		mav.addObject("guideVO", guideVO);
		mav.setViewName("weddingTodo");
		
		return mav;
	}
	
	@GetMapping("/weddingTodo")
	public String weddingTodo(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		UmemberVO user = (UmemberVO)session.getAttribute("userVO");
		System.out.println(user);
		String id = user.getId();
		System.out.println(id);
		GuideVO guideVO = guideService.getGuide(id);
		model.addAttribute("guideVO", guideVO);
		String[] todoList = {guideVO.getPremeet(),guideVO.getStudio(),guideVO.getDress(),guideVO.getTuxedo(),guideVO.getMakeup(),guideVO.getBouquet(),guideVO.getLocation()
				, guideVO.getDeco(),guideVO.getFood(),guideVO.getLetter(),guideVO.getMc(),guideVO.getPresent(),guideVO.getHoneymoon(),guideVO.getRepresent(),guideVO.getHome()};
		String[] todoListEng = {"premeet", "studio", "dress", "tuxedo", "makeup", "bouquet", "location", "deco", "food", "letter", "mc", "present", "honeymoon", "represent", "home"};
		String[] todoListKor = {"상견례", "스튜디오", "드레스", "턱시도", "메이크업", "부케", "결혼식 장소","식장 데코", "음식", "청첩장","사회자 /주례", "예단/예물", "신혼여행", "답례품", "신혼집"};
		request.setAttribute("todoList", todoList);
		request.setAttribute("todoListEng", todoListEng);
		request.setAttribute("todoListKor", todoListKor);
//		System.out.println(guideVO);
		return "weddingTodo";
	}
	
	@ResponseBody
	@PutMapping("/weddingTodo")
	public String todoList(GuideVO guideVO) {
		System.out.println(guideVO);
		return null;
	}

}
