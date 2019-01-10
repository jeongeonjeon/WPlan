package kr.co.mlec.product.dao;

import java.util.List;

import kr.co.mlec.product.vo.ProductVO;

public interface ProductDAO {
	
	
	/**
	 * 카테고리의 모든 상품 리스트를 반환하는 메소드
	 * @param category
	 * @return 카테고리에 맞는 상품리스트
	 */
	public List<ProductVO> selectAll(String category);
	
	/**
	 * �Խñ� ����ȸ ����
	 * @param no �Խñ۹�ȣ
	 */

	public ProductVO selectCategory(ProductVO product);
	
	/**
	 * 상세페이지의 상품 정보를 반환하는 메소드
	 * @param no 상품번호
	 * @return 상품VO
	 */
	public ProductVO selectProductByNo(int no);
	
	/**
	 * ���ī��Ʈ ���� ����
	 */
//	public void increaseReplyCount(int no);
	
	/**
	 * ���ī��Ʈ ���� ����
	 */
//	public void reduceReplyCount(int no);
}
