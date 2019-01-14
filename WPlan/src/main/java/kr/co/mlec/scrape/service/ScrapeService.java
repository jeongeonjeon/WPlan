package kr.co.mlec.scrape.service;

import java.util.List;

import kr.co.mlec.scrape.vo.ScrapePictureVO;
import kr.co.mlec.scrape.vo.ScrapeVO;

public interface ScrapeService {
	
	void insertScrape(ScrapeVO scrape);
	public List<ScrapePictureVO> selectAll(String id);

}
