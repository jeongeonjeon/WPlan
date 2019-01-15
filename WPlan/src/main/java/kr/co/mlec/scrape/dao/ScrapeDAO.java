package kr.co.mlec.scrape.dao;

import java.util.List;

import kr.co.mlec.scrape.vo.ScrapePictureVO;
import kr.co.mlec.scrape.vo.ScrapeVO;

public interface ScrapeDAO {
	
	void insertScrape(ScrapeVO scrape);
	List<ScrapePictureVO> selectAll(String id);
	

}
