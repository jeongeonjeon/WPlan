package kr.co.mlec.cmember.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mlec.cmember.vo.CmemberVO;


@Repository
public class CmemberDAOImpl implements CmemberDAO {

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public void insertCmember(CmemberVO cmemberVO) {
		sqlSession.insert("kr.co.mlec.cmember.insert", cmemberVO);
	}

	@Override
	public CmemberVO selectCmember(CmemberVO cmemberVO) {
		CmemberVO userVO = sqlSession.selectOne("kr.co.mlec.cmember.select", cmemberVO);
		return userVO;
	}
	@Override
	public CmemberVO selectCmember(String id) {
		CmemberVO userVO = sqlSession.selectOne("kr.co.mlec.cmember.selectId", id);
		return userVO;
	}
}
