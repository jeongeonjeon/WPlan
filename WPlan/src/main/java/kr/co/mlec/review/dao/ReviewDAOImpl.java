package kr.co.mlec.review.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mlec.review.vo.ReviewVO;

@Repository
public class ReviewDAOImpl implements ReviewDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<ReviewVO> selectAllReview(int no) {
		List<ReviewVO> reviewList = sqlSession.selectList("kr.co.mlec.review.selectAllReview", no);
		return reviewList;
	}

}
