package kr.co.mlec.umember.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import kr.co.mlec.umember.vo.UmemberVO;

@Repository
public class LoginDAOImpl implements LoginDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public UmemberVO login(UmemberVO member) {
		
		UmemberVO userVO = sqlSession.selectOne("kr.co.mlec.member.login", member);
		
		return userVO;
	}

	
}












