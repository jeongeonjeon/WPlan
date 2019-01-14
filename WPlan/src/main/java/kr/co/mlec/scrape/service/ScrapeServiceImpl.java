package kr.co.mlec.scrape.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mlec.scrape.dao.ScrapeDAO;
import kr.co.mlec.scrape.vo.ScrapePictureVO;
import kr.co.mlec.scrape.vo.ScrapeVO;

@Service
public class ScrapeServiceImpl implements ScrapeService {
	
	@Autowired
	private ScrapeDAO scrapeDao;

	@Override
	public void insertScrape(ScrapeVO scrape) {
		scrapeDao.insertScrape(scrape);
		
	}
	@Override
	public List<ScrapePictureVO> selectAll(String id){
		List<ScrapePictureVO> scrapeList = scrapeDao.selectAll(id);
		return scrapeList;
	}


}
