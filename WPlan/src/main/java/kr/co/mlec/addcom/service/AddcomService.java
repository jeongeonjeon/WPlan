package kr.co.mlec.addcom.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import kr.co.mlec.addcom.vo.AddcomVO;



public interface AddcomService {

	public void insertAddcom(AddcomVO addcomVO);

	public AddcomVO selectAddcom(String id);
	
	public void insertFile(Map<String, Object> map, HttpServletRequest request) throws Exception ;

}
