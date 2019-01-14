package kr.co.mlec.cmember.service;

import kr.co.mlec.cmember.vo.CmemberVO;

public interface CmemberService {

	public void insertCmember(CmemberVO cmemberVO);

	public CmemberVO selectCmember(CmemberVO cmemberVO);
}
