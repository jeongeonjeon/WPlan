package kr.co.mlec.addcom.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mlec.addcom.dao.AddcomDAO;
import kr.co.mlec.addcom.vo.AddcomVO;


@Service
public class AddcomServiceImpl implements AddcomService {

	@Autowired
	private AddcomDAO addcomDao;
	
	@Override
	public void insertAddcom(AddcomVO addcomVO) {
		addcomDao.insertAddcom(addcomVO);
	}

	@Override
	public AddcomVO selectAddcom(AddcomVO addcomVO) {
		// TODO Auto-generated method stub
		return null;
	}
}
