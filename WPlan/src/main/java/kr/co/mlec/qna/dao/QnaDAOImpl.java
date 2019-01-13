package kr.co.mlec.qna.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mlec.qna.vo.QnaVO;

import org.mybatis.spring.SqlSessionTemplate;

@Repository
public class QnaDAOImpl implements QnaDAO {
	
	private SqlSessionTemplate sqlSession;
	
	@Override
	public void insertQnA(QnaVO qnaVO) {
		sqlSession.insert("kr.co.mlec.qna.insertQna", qnaVO);
		
	}

	
}
