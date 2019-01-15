package kr.co.mlec.qna.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
		System.out.println("qnaDAO : " +qna);
		qService.insertQnA(qna);
	}
	
	
	@ResponseBody
	@GetMapping("/qnaList")
	public List<QnaVO> qnaList(@RequestParam int pNo){
		List<QnaVO> list = qService.selectAll(pNo);
		return list;
	}

}
