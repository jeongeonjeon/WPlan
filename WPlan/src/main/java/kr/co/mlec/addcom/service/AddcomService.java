package kr.co.mlec.addcom.service;

import kr.co.mlec.addcom.vo.AddcomVO;
import kr.co.mlec.file.vo.FileUploadVO;


public interface AddcomService {

	public void insertAddcom(AddcomVO addcomVO);

	public AddcomVO selectAddcom(String id);
	
	public void insertFile(FileUploadVO fileuploadVO);

}
