package kr.co.mlec.productOption.service;

import java.util.List;

import kr.co.mlec.productOption.vo.ProductOptionVO;

public interface ProductOptionService {
	
	List<ProductOptionVO> selectOption(int no);

}
