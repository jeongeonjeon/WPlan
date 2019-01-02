package kr.co.mlec.umember.service;

import org.springframework.beans.factory.annotation.Autowired;

import kr.co.mlec.umember.dao.UmemberDAO;
import kr.co.mlec.umember.vo.UmemberVO;

public class UmemberServiceImpI implements UmemberService {

	@Autowired
	private UmemberDAO umemberDao;
	
	public void insertUmember(UmemberVO umemberVO) {
		umemberDao.insertUmember(umemberVO);
	}
}
