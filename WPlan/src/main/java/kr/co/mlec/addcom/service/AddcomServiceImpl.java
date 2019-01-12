package kr.co.mlec.addcom.service;

import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.mlec.addcom.dao.AddcomDAO;
import kr.co.mlec.addcom.vo.AddcomVO;
import kr.co.mlec.file.vo.FileUploadVO;


@Service
public class AddcomServiceImpl implements AddcomService {

	@Autowired
	private AddcomDAO addcomDao;
	
	@Override
	public void insertAddcom(AddcomVO addcomVO) {
		AddcomDAO.insertAddcom(addcomVO);
	}

	@Override
	public AddcomVO selectAddcom(String id) {
		AddcomVO addcomVO = addcomDao.selectAddcom(id);
		return addcomVO;
	}
	
	@Override 
	public void insertFile(Map<String, Object> map, HttpServletRequest request) throws Exception {
	    AddcomDAO.insertAddcom(map);
	     
	    MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
	    Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
	    MultipartFile multipartFile = null;
	    while(iterator.hasNext()){
	        multipartFile = multipartHttpServletRequest.getFile(iterator.next());
	        if(multipartFile.isEmpty() == false){
	            System.out.println("------------- file start -------------");
	            System.out.println("name : "+multipartFile.getName());
	            System.out.println("filename : "+multipartFile.getOriginalFilename());
	            System.out.println("size : "+multipartFile.getSize());
	            System.out.println("-------------- file end --------------\n");
	        }
	    }
	}
	
}
