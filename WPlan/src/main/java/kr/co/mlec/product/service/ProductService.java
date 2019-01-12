package kr.co.mlec.product.service;

import java.util.List;

import kr.co.mlec.product.vo.ProductVO;

public interface ProductService {

	List<ProductVO> selectAllProduct(String category);
	List<ProductVO> selectDressType(String dresstype);
	ProductVO selectProductByNo(int no);
	ProductVO selectName(ProductVO product);
	
}
