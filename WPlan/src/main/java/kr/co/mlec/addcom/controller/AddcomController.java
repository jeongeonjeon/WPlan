package kr.co.mlec.addcom.controller;

import java.io.File;
import java.util.Iterator;
import java.util.UUID;

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
	
	@Autowired
	ServletContext servletContext;
	
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
	
	@RequestMapping(value="/upload.do", method=RequestMethod.POST)
	public ModelAndView fileUpload(MultipartHttpServletRequest mRequest) throws Exception {
		
		// 실행되는 웹어플리케이션의 실제 경로 가져오기
		String uploadDir = servletContext.getRealPath("/upload/");
		System.out.println(uploadDir);

		ModelAndView mav = new ModelAndView("file/uploadResult");

		String id = mRequest.getParameter("id");
		System.out.println("id : " + id);
		
		Iterator<String> iter = mRequest.getFileNames();
		while(iter.hasNext()) {
			
			String formFileName = iter.next();
			// 폼에서 파일을 선택하지 않아도 객체 생성됨
			MultipartFile mFile = mRequest.getFile(formFileName);
			
			// 원본 파일명
			String oriFileName = mFile.getOriginalFilename();
			System.out.println("원본 파일명 : " + oriFileName);
			
			if(oriFileName != null && !oriFileName.equals("")) {
			
				// 확장자 처리
				String ext = "";
				/*// 뒤쪽에 있는 . 의 위치 
				int index = oriFileName.lastIndexOf(".");
				if (index != -1) {
					// 파일명에서 확장자명(.포함)을 추출
					ext = oriFileName.substring(index);
				}*/
				
				// 파일 사이즈
				long fileSize = mFile.getSize();
				System.out.println("파일 사이즈 : " + fileSize);
				
				// 고유한 파일명 만들기	
				String saveFileName = "mlec-" + UUID.randomUUID().toString() + ext;
				System.out.println("저장할 파일명 : " + saveFileName);
			
				// 임시저장된 파일을 원하는 경로에 저장
				mFile.transferTo(new File(uploadDir + saveFileName));
			} 
		} 
		return mav;
	}
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
