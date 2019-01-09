package kr.co.mlec.product.dao;

import java.util.List;

import kr.co.mlec.product.vo.ProductVO;

public interface ProductDAO {
	
	public List<ProductVO> selectAll();
	
	/**
	 * �Խñ� ����ȸ ����
	 * @param no �Խñ۹�ȣ
	 */

	public ProductVO selectCategory(ProductVO product);
	
	/**
	 * 상세페이지의 제품정보 가져오기
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
