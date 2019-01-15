package kr.co.mlec.addcom.controller;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.UUID;

import javax.activation.CommandMap;
import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import kr.co.mlec.addcom.service.AddcomService;
import kr.co.mlec.addcom.vo.AddcomVO;
import kr.co.mlec.cmember.vo.CmemberVO;
import kr.co.mlec.file.vo.FileUploadVO;
import kr.co.mlec.umember.vo.UmemberVO;


@Controller
public class AddcomController {
	
	@Resource(name = "uploadPath")
	private String uploadPath;

	@Autowired
	private AddcomService addcomService;

	
	@GetMapping("/addcom/addcomForm")
	public String ujoinform(Model model) {
		AddcomVO addcomVO = new AddcomVO();
		model.addAttribute("addcomVO", addcomVO);
		
		return "addcom/addcomForm";
	}
	
	@PostMapping("/addcom/addcomForm") 
	public ModelAndView addcom(@Valid AddcomVO addcomVO, @RequestParam("imgs") MultipartFile file,  BindingResult result, HttpServletRequest request, ModelAndView mav) throws IOException {
		
		System.out.println("controller addcom : " + addcomVO );
		if(result.hasErrors()) {
			mav.setViewName("addcomForm");
			return mav;
		}
		
		System.out.println("여기");
		System.out.println(file);
		
		HttpSession session = request.getSession();
		CmemberVO user = (CmemberVO)session.getAttribute("userVO");
		
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getSize());
		System.out.println(file.getContentType());
		
		String savedName =  uploadFile(file.getOriginalFilename(), file.getBytes());
		
		System.out.println(savedName);
		addcomVO.setId(user.getId());
		addcomService.insertAddcom(addcomVO);
		
		System.out.println(addcomVO.getNo());
		
		
		FileUploadVO fileuploadVO = new FileUploadVO();
		
		fileuploadVO.setcNo(addcomVO.getNo());
		fileuploadVO.setfSaveName(savedName);
		fileuploadVO.setfOriName(file.getOriginalFilename());
		fileuploadVO.setfSize(file.getSize());
		fileuploadVO.setType("c");
		
		addcomService.insertFile(fileuploadVO);
		
		System.out.println(fileuploadVO);
		mav.addObject("addcomVO",addcomVO);
		mav.addObject("fileuploadVO",fileuploadVO);
		mav.setViewName("/member/myPage");
//		System.out.println(mav);
		
		return mav;
	}
	
	private String uploadFile(String originalName, byte[] fileDate) throws IOException {
		
		UUID uid = UUID.randomUUID();
		
		String savedName = "wplan_" +  uid.toString()+".jpg";
		File target = new File(uploadPath, savedName);
		
		//org.springframework.util 패키지의 FileCopyUtils는 파일 데이터를 파일로 처리하거나, 복사하는 등의 기능이 있다.
		FileCopyUtils.copy(fileDate, target);
		
		return savedName;
		
	}
	
/*	
 	@RequestMapping(value="/upload")
	public ModelAndView fileUpload(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView("redirect:/member/myPage");
		
		addcomService.insertFile(commandMap.getMap(), request);
		
		return mav;
	}
	*/
	
/*	
  	@GetMapping("/addcom")
	public String addcom(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		CmemberVO cuser = (CmemberVO)session.getAttribute("CuserVO");
		System.out.println(cuser);
		String id = cuser.getId();
		System.out.println(id);
		AddcomVO addcomVO = addcomService.selectAddcom(id);
		model.addAttribute("addcomVO", addcomVO);
		  
		return "addcom";
	}
	*/
}
