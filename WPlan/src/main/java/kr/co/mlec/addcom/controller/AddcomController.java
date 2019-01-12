package kr.co.mlec.addcom.controller;

import java.io.File;
import java.util.Iterator;
import java.util.UUID;

import javax.activation.CommandMap;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import kr.co.mlec.addcom.service.AddcomService;
import kr.co.mlec.addcom.vo.AddcomVO;
import kr.co.mlec.umember.vo.UmemberVO;


@Controller
public class AddcomController {

	@Autowired
	private AddcomService addcomService;

	
	@GetMapping("/addcom/addcomForm")
	public String ujoinform(Model model) {
		AddcomVO addcomVO = new AddcomVO();
		model.addAttribute("addcomVO", addcomVO);
		return "addcom/addcomForm";
	}
	
	@PostMapping("/addcom/addcomForm") 
	public ModelAndView addcom(@Valid AddcomVO addcomVO , BindingResult result, HttpServletRequest request, ModelAndView mav) {
		System.out.println("controller addcom : " + addcomVO );
		if(result.hasErrors()) {
			mav.setViewName("addcomForm");
			return mav;
		}
		HttpSession session = request.getSession();
		UmemberVO user = (UmemberVO)session.getAttribute("userVO");//!
		System.out.println(user);
	
	addcomVO.setId(user.getId());
	addcomService.insertAddcom(addcomVO);
	mav.addObject("addcomVO",addcomVO);
	mav.setViewName("/member/myPage");
	System.out.println(mav);
	return mav;
	}
	
/*	@RequestMapping(value="/upload")
	public ModelAndView fileUpload(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView("redirect:/member/myPage");
		
		addcomService.insertFile(commandMap.getMap(), request);
		
		return mav;
	}*/
/*	@GetMapping("/addcom")
	public String addcom(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		CmemberVO cuser = (CmemberVO)session.getAttribute("CuserVO");
		System.out.println(cuser);
		String id = cuser.getId();
		System.out.println(id);
		AddcomVO addcomVO = addcomService.selectAddcom(id);
		model.addAttribute("addcomVO", addcomVO);
		  
		return "addcom";
	}*/
}
