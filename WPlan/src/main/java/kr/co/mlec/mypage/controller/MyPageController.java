package kr.co.mlec.mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.ibatis.javassist.bytecode.annotation.MemberValueVisitor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.mlec.scrape.service.ScrapeService;
import kr.co.mlec.scrape.vo.ScrapeVO;
import kr.co.mlec.umember.vo.UmemberVO;

@Controller
public class MyPageController {
	
	@Autowired
	private ScrapeService scrapeService;
	
	@GetMapping("/scrape")
	public String scrape() {		
		
	
		
		return "/scrape";
	}
	
	@PostMapping("/scrape")
	@ResponseBody
	public void scrape(ScrapeVO scrape,@RequestParam("pNo") int pNo, HttpServletRequest request) {
									//파라미터가 두개일 경우엔 ("")를 어노테이션 옆에 붙여주어야한다. 이름이 다를때에도 (고운)
		HttpSession session = request.getSession();
		UmemberVO user = (UmemberVO)session.getAttribute("userVO");
		
//		int pNo = Integer.parseInt(request.getParameter("pNo"));
//		System.out.println(pNo);

		scrape.setId(user.getId());
		scrape.setpNo(pNo);
		scrapeService.insertScrape(scrape);
		System.out.println(scrape);
	}

}
