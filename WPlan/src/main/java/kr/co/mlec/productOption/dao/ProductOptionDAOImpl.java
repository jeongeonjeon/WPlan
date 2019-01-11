package kr.co.mlec.productOption.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mlec.productOption.vo.ProductOptionVO;

@Repository
public class ProductOptionDAOImpl implements ProductOptionDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<ProductOptionVO> selectOption(int no) {
		List<ProductOptionVO> optionList = sqlSession.selectList("kr.co.mlec.productOption.selectOption", no);
		return optionList;
	}

}
