package kr.co.mlec.qna.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.mlec.qna.service.QnaService;
import kr.co.mlec.qna.vo.QnaVO;

@Controller
public class QnaController {
	
	@Autowired
	private QnaService qService;
	
	@PostMapping("/inputQnA")
	@ResponseBody
	public void insertQnA(QnaVO qna) {
		System.out.println(qna);
		qService.insertQnA(qna);
	}
	

}
