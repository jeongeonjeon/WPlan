package kr.co.mlec.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mlec.product.dao.ProductDAO;
import kr.co.mlec.product.vo.ProductVO;
import kr.co.mlec.productOption.dao.ProductOptionDAO;
import kr.co.mlec.productOption.vo.ProductOptionVO;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDao;
	
	@Autowired
	private ProductOptionDAO optionDao;

	@Override
	public List<ProductVO> selectAllProduct(String category) {

		List<ProductVO> productList = productDao.selectAll(category);
		
		return productList;
	}
	
	@Override
	public List<ProductVO> selectDressType(String dresstype) {
		
		List<ProductVO> productList = productDao.selectDressType(dresstype);
	
		return productList;
	}

	@Override
	public ProductVO selectName(ProductVO product) {

		ProductVO productvo = productDao.selectCategory(product);
		
		return productvo;
	}

	@Override
	public ProductVO selectProductByNo(int no) {
		ProductVO product =  productDao.selectProductByNo(no);
//		System.out.println("productService : " + product);
		
		return product;
	}

}