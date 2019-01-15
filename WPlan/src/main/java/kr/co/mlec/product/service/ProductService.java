package kr.co.mlec.product.service;

import java.util.List;

import kr.co.mlec.file.vo.FileUploadVO;
import kr.co.mlec.product.vo.ProductVO;
import kr.co.mlec.umember.vo.UmemberVO;

public interface ProductService {

	List<ProductVO> selectAllProduct(String category);
	List<ProductVO> selectDressType(String dresstype);
	ProductVO selectProductByNo(int no);
	ProductVO selectName(ProductVO product);
	public void insertProduct(ProductVO productVO);
	void insertFile(FileUploadVO fileuploadVO);
}
