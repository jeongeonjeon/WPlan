package kr.co.mlec.qna.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mlec.qna.vo.QnaVO;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

@Repository
public class QnaDAOImpl implements QnaDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public void insertQnA(QnaVO qnaVO) {
		sqlSession.insert("kr.co.mlec.qna.insertQna", qnaVO);
		
	}

	@Override
	public List<QnaVO> selectAll(int pNo) {
		List<QnaVO> qnaList = sqlSession.selectList("kr.co.mlec.qna.selectAll", pNo);
		return qnaList;
	}

	
}
