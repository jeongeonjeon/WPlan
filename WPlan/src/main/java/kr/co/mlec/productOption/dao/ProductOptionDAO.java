package kr.co.mlec.productOption.dao;

import java.util.List;

import kr.co.mlec.productOption.vo.ProductOptionVO;

public interface ProductOptionDAO {
	
	public List<ProductOptionVO> selectOption(int no);

}
