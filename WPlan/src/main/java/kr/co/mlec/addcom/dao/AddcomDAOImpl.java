package kr.co.mlec.addcom.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mlec.addcom.vo.AddcomVO;


@Repository
public class AddcomDAOImpl implements AddcomDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public void insertAddcom(AddcomVO addcomVO) {
		sqlSession.insert("kr.co.mlec.addcom.insert", addcomVO);
	}

}
