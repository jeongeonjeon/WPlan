package kr.co.mlec.scrape.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mlec.scrape.dao.ScrapeDAO;
import kr.co.mlec.scrape.vo.ScrapeVO;

@Service
public class ScrapeServiceImpl implements ScrapeService {
	
	@Autowired
	private ScrapeDAO scrapeDao;

	@Override
	public void insertScrape(ScrapeVO scrape) {
		scrapeDao.insertScrape(scrape);
		
	}

}
