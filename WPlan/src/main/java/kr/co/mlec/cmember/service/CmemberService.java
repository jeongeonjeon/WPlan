package kr.co.mlec.cmember.service;

import kr.co.mlec.cmember.vo.CmemberVO;

public interface CmemberService {

	public void insertCmember(CmemberVO cmemberVO);

	public CmemberVO selectCmember(CmemberVO cmemberVO);
	
	public CmemberVO myPage(String id);
	
	/**
	 * 회원을 탈퇴시켜주는 메소드
	 * @param id
	 */
	public void deleteC(String id);
}
