package kr.co.mlec.productOption.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mlec.productOption.dao.ProductOptionDAO;
import kr.co.mlec.productOption.vo.ProductOptionVO;

@Service
public class ProductOptionServiceImpl implements ProductOptionService {
	
	@Autowired
	private ProductOptionDAO optionDao;

	@Override
	public List<ProductOptionVO> selectOption(int no) {
		List<ProductOptionVO> optionList = optionDao.selectOption(no);
		return optionList;
	}

}
