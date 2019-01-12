package kr.co.mlec.addcom.dao;

import kr.co.mlec.addcom.vo.AddcomVO;
import kr.co.mlec.file.vo.FileUploadVO;

public interface AddcomDAO {

	public void insertAddcom(AddcomVO addcomVO);
	
	public AddcomVO selectAddcom(String id);
	
	public void insertFile(FileUploadVO fileuploadVO);
}
