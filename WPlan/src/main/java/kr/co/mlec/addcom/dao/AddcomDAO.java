package kr.co.mlec.addcom.dao;

import kr.co.mlec.addcom.vo.AddcomVO;

public interface AddcomDAO {

	public void insertAddcom(AddcomVO addcomVO);
	
	public AddcomVO selectAddcom(String id);
}
