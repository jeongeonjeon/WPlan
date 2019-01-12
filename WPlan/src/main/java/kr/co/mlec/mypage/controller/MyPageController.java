package kr.co.mlec.mypage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.mlec.scrape.service.ScrapeService;
import kr.co.mlec.scrape.vo.ScrapeVO;

@Controller
public class MyPageController {
	
	@Autowired
	private ScrapeService scrapeService;
	
	@GetMapping("/scrape")
	public String scrape() {		
		
		
		
		return "/scrape";
	}
	
	@PutMapping("/scrape")
	@ResponseBody
	public void scrape(ScrapeVO scrape, HttpSession session) {
									//파라미터가 두개일 경우엔 ("")를 어노테이션 옆에 붙여주어야한다. 이름이 다를때에도 (고운)
		
		scrapeService.insertScrape(scrape);
	}

}
