package kr.co.mlec.qna.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mlec.qna.dao.QnaDAO;
import kr.co.mlec.qna.vo.QnaVO;

@Service
public class QnaServiceImpl implements QnaService {
	
	@Autowired
	private QnaDAO qDao;
	
	@Override
	public void insertQnA(QnaVO qnaVO) {
		qDao.insertQnA(qnaVO);
		
	}

	@Override
	public List<QnaVO> selectAll(int pNo) {
		List<QnaVO> list = qDao.selectAll(pNo);
		return list;
	}

}
