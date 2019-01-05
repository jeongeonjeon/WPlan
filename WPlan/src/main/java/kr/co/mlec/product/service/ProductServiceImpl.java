package kr.co.mlec.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mlec.product.dao.ProductDAO;
import kr.co.mlec.product.vo.ProductVO;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDao;
	
	@Override
	public List<ProductVO> selectAllProduct() {

		List<ProductVO> productList = productDao.selectAll();
		
		return productList;
	}

	@Override
	public ProductVO selectName(ProductVO product) {

		ProductVO productvo = productDao.selectCategory(product);
		
		return productvo;
	}

	@Override
	public ProductVO selectProductByNo(int no) {
		// TODO Auto-generated method stub
		return null;
	}

}
