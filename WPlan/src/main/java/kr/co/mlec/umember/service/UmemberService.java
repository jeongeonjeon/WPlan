package kr.co.mlec.umember.service;

import kr.co.mlec.umember.vo.UmemberVO;

public interface UmemberService {

	public void insertUmember(UmemberVO umemberVO);

	public UmemberVO selectUmember(UmemberVO umemberVO);

}
