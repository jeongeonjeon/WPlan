package kr.co.mlec.addcom.controller;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.mlec.addcom.service.AddcomService;
import kr.co.mlec.addcom.vo.AddcomVO;

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
	
/*	@PostMapping("/addcom/addcomForm") 
	@ResponseBody
	public ModelAndView join(AddcomVO addcomVO, HttpSession session) {
		addcomService.insertAddcom(addcomVO);
		
		AddcomVO comVO = addcomService.selectAddcom(addcomVO);
		
		ModelAndView mav = new ModelAndView();

		if(comVO == null) {
			mav.addObject("msg","����ִ� �׸��� ä���ּ���");
			mav.setViewName("redirect:/addcomForm");
		} else {
			mav.setViewName("redirect:/");
		}
		return mav;
	}
	
	public void checkBox(ServletRequest request) {
		String chkName[] = ServletRequestUtils.getStringParameters(request, "chkName");
		String sumchkName = "";
		
		for(int i = 0 ; i < chkName.length ; i++) {
			if(i == (chkName.length -1)) {
				sumchkName=sumchkName + chkName[i];
			} else {
				sumchkName = sumchkName + chkName[i] + ",";
			}
			System.out.println(sumchkName);
		}
	}*/
}
