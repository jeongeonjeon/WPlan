package kr.co.mlec.umember.service;

import kr.co.mlec.cmember.vo.CmemberVO;
import kr.co.mlec.umember.vo.UmemberVO;

public interface LoginService {
	
	UmemberVO login(UmemberVO member);
	CmemberVO login(CmemberVO member);

}
