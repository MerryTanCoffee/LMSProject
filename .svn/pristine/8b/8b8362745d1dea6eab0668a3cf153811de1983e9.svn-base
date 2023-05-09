package kr.or.ddit.consult.controller;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.consult.service.IConsultService;
import kr.or.ddit.consult.vo.ConsultVO;
import kr.or.ddit.user.vo.ProfessorVO;
import kr.or.ddit.user.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/consult")
public class ConsultController {

	@Autowired
	private IConsultService consultService;
	
	@GetMapping("/info")	// 상담 신청 시간 조회
	public String consultInfo(ProfessorVO pro, HttpServletRequest req, Model model) {
		
		HttpSession session = req.getSession(false);
		if(session != null && session.getAttribute("userInfo") != null) {
			UserVO userVO = (UserVO) session.getAttribute("userInfo");
			String deptCode = userVO.getStudentVO().getAcademicVO().getDeptCode();
			
			List<ProfessorVO> proInfoList = consultService.getProInfoList(deptCode);
			
			log.info(">>>" + proInfoList.toString());
			
			model.addAttribute("proInfoList", proInfoList);
			
			return "consult/consultInfo";
		   
		}else {
		     return "redirect:/login";
		}
	}
	
	@ResponseBody
	@GetMapping("/proTimeTbl/{proId}")
	public List<Map <String, Object>> proTimeTbl(@PathVariable String proId) {
		List<Map<String, Object>> proTimeList = consultService.getProTimeTbl(proId);
		
		return proTimeList;
	}
	
	@ResponseBody
	@GetMapping("/proConsTimeTbl/{proId}")
	public List<Map <String, Object>> proConsTimeTbl(@PathVariable String proId) {
		List<Map<String, Object>> proConsTimeList = consultService.getProConsTimeTbl(proId);
		
		return proConsTimeList;
	}
	
	@GetMapping("/list")	// 상담 신청내역 리스트
	public String consultList(HttpServletRequest req, ConsultVO cv, Model model) {
		HttpSession session = req.getSession(false);
		if(session != null && session.getAttribute("userInfo") != null) {
			UserVO userVO = (UserVO) session.getAttribute("userInfo");
			String userId = userVO.getUserId();
			log.info("학생아이디 >>" + userId);
			
			cv.setStuId(userId);
			
			List<ConsultVO> consultList = consultService.registerList(cv);
			model.addAttribute("consultList", consultList);
			
			return "consult/consultList";
		}else {
		     return "redirect:/login";
		}
	}
	
	@PostMapping("/cancel")
	public String cancel(int consNum, HttpServletRequest req, Model model) {
		
		HttpSession session = req.getSession(false);
		if(session != null && session.getAttribute("userInfo") != null) {
			consultService.cancelConsult(consNum);
			
			return "redirect:/consult/list";
			
		}else {
		     return "redirect:/login";
		}
	}
	
	@PostMapping("/insert")
	@ResponseBody
	public String consultInsert(@RequestParam Map<String, Object> consultMap) {
		log.info("상담신청 데이터: " + consultMap.toString());
		ServiceResult result = null;
		String msg = "";
		result = consultService.consultInsert(consultMap);
		
		if(result.equals(ServiceResult.OK)) {
			msg = "success";
		}else {
			msg = "fail";
		}
		return msg;
	}
	
	
	// 교수가 학생 신청내역 조회하기
	@GetMapping("/consultAppList")
	public String consultAppList(ConsultVO cv, HttpServletRequest req, Model model) {
		log.info("교수가 보는 것" + cv);
		HttpSession session = req.getSession(false);
		
		if(session != null && session.getAttribute("userInfo") != null) {
			UserVO userVO = (UserVO) session.getAttribute("userInfo");
			String userId = userVO.getUserId();
			
			cv.setProId(userId);
			
			List<ConsultVO> consultAppListW = consultService.consultAppListW(cv);
			List<ConsultVO> consultAppListY = consultService.consultAppListY(cv);
			List<ConsultVO> consultAppListN = consultService.consultAppListN(cv);
			
			model.addAttribute("consultAppListW", consultAppListW);
			model.addAttribute("consultAppListY", consultAppListY);
			model.addAttribute("consultAppListN", consultAppListN);
			
			return "consult/consultAppList";
		   
		}else {
		     return "redirect:/login";
		}
	}
	
	@PostMapping("/updateStatus")
	public String consultStatusUpdate(ConsultVO cv, HttpServletRequest req, Model model) {
		
		HttpSession session = req.getSession(false);
		if(session != null && session.getAttribute("userInfo") != null) {
			log.info("상태 업데이트" + cv);
			
			consultService.updateStatus(cv);
			
			return "redirect:/consult/consultAppList";
		   
		}else {
		     return "redirect:/login";
		}
	}
	
}
