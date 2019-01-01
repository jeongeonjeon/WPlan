package kr.co.mlec.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mlec.login.dao.LoginDAO;
import kr.co.mlec.member.vo.MemberVO;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDAO loginDao;
	
	@Override
	public MemberVO login(MemberVO member) {

		MemberVO userVO = loginDao.login(member);
		
		return userVO;
	}

}









