package kr.co.mlec.umember.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mlec.cmember.vo.CmemberVO;
import kr.co.mlec.umember.vo.UmemberVO;

@Repository
public class LoginDAOImpl implements LoginDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	
	@Override
	public UmemberVO login(UmemberVO member) {
		
		UmemberVO userVO = sqlSession.selectOne("kr.co.mlec.umember.login", member);
//		System.out.println(userVO);
		return userVO;
	}
	
	@Override
	public CmemberVO clogin(CmemberVO member) {
		CmemberVO cuserVO = sqlSession.selectOne("kr.co.mlec.umember.clogin", member);
		return cuserVO;
	}
		

}
