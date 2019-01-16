package kr.co.mlec.umember.dao;

import kr.co.mlec.cmember.vo.CmemberVO;
import kr.co.mlec.umember.vo.UmemberVO;

public interface LoginDAO {

	public UmemberVO login(UmemberVO member);
	
	public CmemberVO clogin(CmemberVO member);

}
 