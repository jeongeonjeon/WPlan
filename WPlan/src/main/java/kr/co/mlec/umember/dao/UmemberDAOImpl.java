package kr.co.mlec.umember.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mlec.umember.vo.UmemberVO;

@Repository
public class UmemberDAOImpl implements UmemberDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public void insertUmember(UmemberVO umemberVO) {
		sqlSession.insert("kr.co.mlec.umember.insert", umemberVO);
	}

	@Override
	public UmemberVO selectUmember(UmemberVO umemberVO) {
		UmemberVO userVO = sqlSession.selectOne("kr.co.mlec.umember.select", umemberVO);
		return userVO;
	}

}
