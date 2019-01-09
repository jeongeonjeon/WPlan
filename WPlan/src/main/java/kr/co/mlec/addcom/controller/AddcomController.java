package kr.co.mlec.addcom.controller;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.mlec.addcom.service.AddcomService;
import kr.co.mlec.addcom.vo.AddcomVO;
import kr.co.mlec.cmember.vo.CmemberVO;
import kr.co.mlec.guide.vo.GuideVO;

@Controller
public class AddcomController {

	@Autowired
	private AddcomService addcomService;
	
	@GetMapping("/addcom/addcomForm")
	public String ujoinform(Model model) {
		AddcomVO addcomVO = new AddcomVO();
		model.addAttribute("AddcomVO", addcomVO);
		return "addcom/addcomForm";
	}
	
	@PostMapping("/addcom/addcomForm") 
	public ModelAndView addcom(@Valid AddcomVO addcomVO , BindingResult result, HttpServletRequest request, ModelAndView mav) {
		
		if(result.hasErrors()) {
			mav.setViewName("addcomForm");
			return mav;
		}
		HttpSession session = request.getSession();
		CmemberVO cuser = (CmemberVO)session.getAttribute("CuserVO");
	
	addcomVO.setC_id(cuser.getId());
	addcomService.insertAddcom(addcomVO);
	mav.addObject("addcomVO",addcomVO);
	mav.setViewName("addcom");
	
	return mav;
	}
	
	@GetMapping("/addcom")
	public String addcom(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		CmemberVO cuser = (CmemberVO)session.getAttribute("CuserVO");
		System.out.println(cuser);
		String id = cuser.getId();
		System.out.println(id);
		AddcomVO addcomVO = addcomService.selectAddcom(id);
		  
		return "addcom";
	}
}
