package kr.co.mlec.scrape.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mlec.product.vo.ProductVO;
import kr.co.mlec.productOption.vo.ProductOptionVO;
import kr.co.mlec.scrape.vo.ScrapePictureVO;
import kr.co.mlec.scrape.vo.ScrapeVO;

@Repository
public class ScrapeDAOImpl implements ScrapeDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public void insertScrape(ScrapeVO scrape) {
		sqlSession.insert("kr.co.mlec.scrape.insertScrape", scrape );
		
	}
	@Override
	public List<ScrapePictureVO> selectAll(String id){
		List<ScrapePictureVO> scrapeList = sqlSession.selectList("kr.co.mlec.scrape.selectScrape", id);
		return scrapeList;
	}

}
