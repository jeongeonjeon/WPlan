package kr.co.mlec.addcom.dao;

import java.util.Map;

import kr.co.mlec.addcom.vo.AddcomVO;
import kr.co.mlec.file.vo.FileUploadVO;

public interface AddcomDAO {

	public static void insertAddcom(AddcomVO addcomVO) {
		
	};
	
	public AddcomVO selectAddcom(String id);
	
	public void insertFile(FileUploadVO fileuploadVO);
	
	public static void insertAddcom(Map<String, Object> map) {

		
	}
	
	
} 
