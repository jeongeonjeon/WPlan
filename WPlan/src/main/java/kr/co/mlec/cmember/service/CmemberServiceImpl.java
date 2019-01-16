package kr.co.mlec.cmember.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mlec.cmember.dao.CmemberDAO;
import kr.co.mlec.cmember.vo.CmemberVO;


@Service
public class CmemberServiceImpl implements CmemberService {

	@Autowired
	private CmemberDAO cmemberDao;
	
	@Override
	public void insertCmember(CmemberVO umemberVO) {
		cmemberDao.insertCmember(umemberVO);
	}
	
	@Override
	public CmemberVO selectCmember(CmemberVO cmemberVO) {
		CmemberVO userVO = cmemberDao.selectCmember(cmemberVO);
		return userVO;
	}

	@Override
	public CmemberVO myPage(String id) {
		CmemberVO userVO = cmemberDao.myPage(id);
		return userVO;
	}

	@Override
	public void deleteC(String id) {
		cmemberDao.deleteC(id);
		
	}
}
