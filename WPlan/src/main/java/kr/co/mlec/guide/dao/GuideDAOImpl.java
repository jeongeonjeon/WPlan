package kr.co.mlec.guide.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mlec.guide.vo.GuideVO;

@Repository
public class GuideDAOImpl implements GuideDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public void insertInfo(GuideVO guideVO) {
		sqlSession.insert("kr.co.mlec.guide.insertInfo", guideVO);
		
		
	}

	@Override
	public GuideVO getGuide(String id) {
		GuideVO guideVO = sqlSession.selectOne("kr.co.mlec.guide.selectGuide", id);
		return guideVO;
	}

}
