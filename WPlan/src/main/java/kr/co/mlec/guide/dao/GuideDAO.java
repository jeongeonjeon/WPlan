package kr.co.mlec.guide.dao;

import kr.co.mlec.guide.vo.GuideVO;

public interface GuideDAO {
	
	public void insertInfo(GuideVO guideVO); 
	
	public GuideVO getGuide(String id);
}
