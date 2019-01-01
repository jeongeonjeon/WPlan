package kr.co.mlec.umember.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mlec.umember.dao.LoginDAO;
import kr.co.mlec.umember.vo.UmemberVO;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDAO loginDao;
	
	@Override
	public UmemberVO login(UmemberVO member) {

		UmemberVO userVO = LoginDAO.login(member);
		
		return userVO;
	}

}









