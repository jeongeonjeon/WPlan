package kr.co.mlec.product.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mlec.product.vo.ProductVO;
import kr.co.mlec.productOption.vo.ProductOptionVO;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<ProductVO> selectAll(String category) {
		List<ProductVO> productList = sqlSession.selectList("kr.co.mlec.product.selectAll", category);
		
		return productList;
	}

	@Override
	public ProductVO selectCategory(ProductVO product) {

/*		ProductVO productvo = sqlSession.selectOne("kr.co.mlec.product.selectCategory", product);
*/		
		return null/*productvo*/;
	}

	@Override
	public ProductVO selectProductByNo(int no) {
		
		ProductVO productVO = sqlSession.selectOne("kr.co.mlec.product.selectProductByNo", no);
//		System.out.println("productDAO : " + productVO);
		
		return productVO;
	}
	

////	댓글 카운트 증가
//	@Override
//	public void increaseReplyCount(int no) {
//		sqlSession.update("kr.co.mlec.board.incrementReplyCnt", no);
//		
//	}
//
////	댓글카운트 감소
//	@Override
//	public void reduceReplyCount(int no) {
//		sqlSession.update("kr.co.mlec.board.decrementReplyCnt", no);
//	}
	
}
