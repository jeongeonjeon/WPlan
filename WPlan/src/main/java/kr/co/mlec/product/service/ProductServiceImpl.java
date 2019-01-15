package kr.co.mlec.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mlec.file.vo.FileUploadVO;
import kr.co.mlec.product.dao.ProductDAO;
import kr.co.mlec.product.vo.ProductPicVO;
import kr.co.mlec.product.vo.ProductVO;
import kr.co.mlec.productOption.dao.ProductOptionDAO;
import kr.co.mlec.productOption.vo.ProductOptionVO;
import kr.co.mlec.umember.vo.UmemberVO;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDao;
	
	@Autowired
	private ProductOptionDAO optionDao;

	@Override
	public List<ProductPicVO> selectAllProduct(String category) {

		List<ProductPicVO> productList = productDao.selectAll(category);
		
		return productList;
	}
	
	@Override
	public List<ProductPicVO> selectDressType(String dresstype) {
		
		List<ProductPicVO> productList = productDao.selectDressType(dresstype);
	
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
	
	@Override
	public void insertProduct(ProductVO productVO) {
		productDao.insertProduct(productVO);
	}
	
	@Override
	public void insertFile(FileUploadVO fileuploadVO) {
		productDao.insertFile(fileuploadVO);
	}
	
	@Override
	public List<FileUploadVO> fileSelectNo(int pNo) {
		List<FileUploadVO> fileList =  productDao.FileSelectNo(pNo);
		
		return fileList;
	}

}