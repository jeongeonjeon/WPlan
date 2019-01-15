package kr.co.mlec.umember.service;

import kr.co.mlec.umember.vo.UmemberVO;

public interface UmemberService {

	public void insertUmember(UmemberVO umemberVO);

	/**
	 * 
	 * @param umemberVO
	 * @return
	 */
	public UmemberVO selectUmember(UmemberVO umemberVO);
	
	/**
	 * 마이페이지를 보여주기 위한 정보를 가져오는 메소드
	 * @param id
	 * @return 일반회원의 정보
	 */
	UmemberVO myPage(String id);

}
