package kr.or.ddit.statistics.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.statistics.service.IStatisticsService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/statistics")
public class StatisticsController {
	
	@Autowired
	private IStatisticsService Service;

	@GetMapping("/chart")
	public String statisticsChart(HttpServletRequest req, Model model) {

		HttpSession session = req.getSession(false);

		if (session != null && session.getAttribute("userInfo") != null) {
			
			// 학생, 교수, 교직원 수 가져오기
			Map<String, Object> userOfNum = Service.getUserOfNum();
			Map<String, Object> stuStatusOfNum = Service.getStuStatusOfNum();
			Map<String, Object> collOfStuNum = Service.getCollOfStuNum();
			
			model.addAttribute("collOfStuNum", collOfStuNum);
			model.addAttribute("stuStatusOfNum", stuStatusOfNum);
			model.addAttribute("userOfNum", userOfNum);
			
			return "statistics/allChart";
		} else {
			return "redirect:/login";
		}

	}

}
