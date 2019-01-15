package kr.co.mlec.qna.dao;

import java.util.List;

import kr.co.mlec.qna.vo.QnaVO;

public interface QnaDAO {

	public void insertQnA(QnaVO qnaVO);
	
	public List<QnaVO> selectAll(int pNo );
}
