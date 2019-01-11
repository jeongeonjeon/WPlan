package kr.co.mlec.review.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mlec.review.dao.ReviewDAO;
import kr.co.mlec.review.vo.ReviewVO;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	ReviewDAO reviewDao;

	@Override
	public List<ReviewVO> selectAllReview(int no) {
		return reviewDao.selectAllReview(no);
	
	}

}
