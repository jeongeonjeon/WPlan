package kr.co.mlec.product.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mlec.file.vo.FileUploadVO;
import kr.co.mlec.product.vo.ProductPicVO;
import kr.co.mlec.product.vo.ProductVO;
import kr.co.mlec.productOption.vo.ProductOptionVO;
import kr.co.mlec.umember.vo.UmemberVO;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<ProductPicVO> selectAll(String category) {
		List<ProductPicVO> productList = sqlSession.selectList("kr.co.mlec.product.selectAll", category);
		
		return productList;
	}
	@Override
	public List<ProductPicVO> selectDressType(String dresstype) {
		List<ProductPicVO> productList = sqlSession.selectList("kr.co.mlec.product.selectDressType", dresstype);
		
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
	
	@Override
	public void insertProduct(ProductVO productVO) {
		sqlSession.insert("kr.co.mlec.product.insertProduct", productVO);
	}
	@Override
	public void insertFile(FileUploadVO fileuploadVO) {
		sqlSession.insert("kr.co.mlec.file.fileinsert", fileuploadVO);
	}
	@Override
	public List<FileUploadVO> FileSelectNo(int pNo) {
		List<FileUploadVO> fileList = sqlSession.selectList("kr.co.mlec.file.fileSelectNo", pNo);
		System.out.println("DAO : "+ fileList);
		return fileList;
	}
	
}
