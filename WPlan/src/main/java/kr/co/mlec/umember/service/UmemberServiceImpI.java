package kr.co.mlec.umember.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mlec.umember.dao.UmemberDAO;
import kr.co.mlec.umember.vo.UmemberVO;

@Service
public class UmemberServiceImpI implements UmemberService {

	@Autowired
	private UmemberDAO umemberDao;
	
	@Override
	public void insertUmember(UmemberVO umemberVO) {
		umemberDao.insertUmember(umemberVO);
	}
	
	@Override
	public UmemberVO selectUmember(UmemberVO umemberVO) {
		UmemberVO userVO = umemberDao.selectUmember(umemberVO);
		return userVO;
	}
}
