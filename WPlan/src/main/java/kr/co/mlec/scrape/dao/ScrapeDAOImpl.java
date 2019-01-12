package kr.co.mlec.scrape.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mlec.scrape.vo.ScrapeVO;

@Repository
public class ScrapeDAOImpl implements ScrapeDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public void insertScrape(ScrapeVO scrape) {
		sqlSession.insert("kr.co.mlec.scrape.insertScrape", scrape );
		
	}

}
