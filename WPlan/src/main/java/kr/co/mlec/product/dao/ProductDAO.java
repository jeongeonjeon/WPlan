package kr.co.mlec.product.dao;

import java.util.List;

import kr.co.mlec.product.vo.ProductVO;

public interface ProductDAO {
	
	public List<ProductVO> selectAll();
	
	/**
	 * 게시글 상세조회 서비스
	 * @param no 게시글번호
	 */

	public ProductVO selectCategory(ProductVO product);
	
	/**
	 * 댓글카운트 증가 서비스
	 */
//	public void increaseReplyCount(int no);
	
	/**
	 * 댓글카운트 감소 서비스
	 */
//	public void reduceReplyCount(int no);
}
