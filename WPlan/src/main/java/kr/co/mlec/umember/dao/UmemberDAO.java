 package kr.co.mlec.umember.dao;

import kr.co.mlec.umember.vo.UmemberVO;

public interface UmemberDAO {

	public void insertUmember(UmemberVO umemberVO);

	public UmemberVO selectUmember(UmemberVO umemberVO);
	
	public UmemberVO myPage(String id);
	
	public void deleteU(String id);

}
