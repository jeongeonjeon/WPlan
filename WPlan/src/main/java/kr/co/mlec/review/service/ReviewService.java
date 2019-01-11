package kr.co.mlec.review.service;

import java.util.List;

import kr.co.mlec.review.vo.ReviewVO;

public interface ReviewService {
	
	/**
	 * 상품 번호에 맞는 모든 리뷰를 가져와서 리뷰리스트를 리턴해주는 메소드
	 * @return 후기리스트
	 */
	public List<ReviewVO> selectAllReview(int no);
}
