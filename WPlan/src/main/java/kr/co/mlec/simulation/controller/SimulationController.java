package kr.co.mlec.simulation.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.mlec.simulation.service.SimulationService;
import kr.co.mlec.simulation.vo.SimulationVO;
import kr.co.mlec.umember.vo.UmemberVO;

public class SimulationController {
	
	@Autowired
	private SimulationService simulService;
	
	//시뮬레이션 저장
	@PostMapping("/simul")
	@ResponseBody
	public void simulationInsert(SimulationVO simul, @RequestParam("id") String id, @RequestParam("imgArr") String[] imgArr, HttpServletRequest request) {
								
		HttpSession session = request.getSession();
		UmemberVO user = (UmemberVO)session.getAttribute("userVO");
		
		System.out.println(user);
		System.out.println(imgArr);

//		simulService.insertSimulation(simul);
//		System.out.println(simul);
	}
	

}
