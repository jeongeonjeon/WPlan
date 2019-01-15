package kr.co.mlec.simulation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.mlec.scrape.dao.ScrapeDAO;
import kr.co.mlec.scrape.vo.ScrapePictureVO;
import kr.co.mlec.scrape.vo.ScrapeVO;
import kr.co.mlec.simulation.dao.SimulationDAO;
import kr.co.mlec.simulation.vo.SimulationVO;

@Service
public class SimulationServiceImpl implements SimulationService {
	
	@Autowired
	private SimulationDAO simulationDao;

	@Override
	public void insertSimulation(SimulationVO simul) {
		simulationDao.insertSimulation(simul);	
	}


}
