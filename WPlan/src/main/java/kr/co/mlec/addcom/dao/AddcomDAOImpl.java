package kr.co.mlec.addcom.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mlec.addcom.vo.AddcomVO;
import kr.co.mlec.file.vo.FileUploadVO;


@Repository
public class AddcomDAOImpl implements AddcomDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public void insertAddcom(AddcomVO addcomVO) {
		sqlSession.insert("kr.co.mlec.addcom.insert", addcomVO);
	}

	@Override
	public AddcomVO selectAddcom(String id) {
		AddcomVO addcomVO = sqlSession.selectOne("kr.co.mlec.addcom.select", id);
		return null;
	}
	
	@Override
	public void insertFile(FileUploadVO fileuploadVO) {
		sqlSession.insert("kr.co.mlec.file.fileinsert", fileuploadVO);
	}

}
