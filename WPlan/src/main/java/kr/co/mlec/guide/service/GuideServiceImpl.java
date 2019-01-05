package kr.co.mlec.guide.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mlec.guide.dao.GuideDAO;
import kr.co.mlec.guide.vo.GuideVO;


@Service
public class GuideServiceImpl implements GuideService {
	
	@Autowired
	private GuideDAO guideDao;

	@Override
	public void insertInfo(GuideVO guideVO) {
		guideDao.insertInfo(guideVO);
		
	}

	@Override
	public GuideVO getGuide(String id) {
		guideDao.getGuide(id);
		return null;
	}

}
