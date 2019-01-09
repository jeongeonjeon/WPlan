package kr.co.mlec.addcom.service;

import kr.co.mlec.addcom.vo.AddcomVO;


public interface AddcomService {

	public void insertAddcom(AddcomVO addcomVO);

	public AddcomVO selectAddcom(String c_id);

}
