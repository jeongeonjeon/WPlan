package kr.co.mlec.simulation.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.mlec.simulation.vo.SimulationVO;



@Repository
public class SimulationDAOImpl implements SimulationDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public void insertSimulation(SimulationVO simul) {
		sqlSession.insert("kr.co.mlec.scrape.insertScrape", simul );
	}

	
}
