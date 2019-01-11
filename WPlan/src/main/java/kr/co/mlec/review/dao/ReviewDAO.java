package kr.co.mlec.review.dao;

import java.util.List;

import kr.co.mlec.review.vo.ReviewVO;

public interface ReviewDAO {
	
	/**
	 * 상품 넘버에 맞는 후기 리스트를 가져와서 리턴하는 메소드 
	 * @return 후기 리스트
	 * (2019.01.11) 최고운
	 */
	List<ReviewVO> selectAllReview(int no);

}
