package kr.or.ddit.tuition.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.ddit.tuition.service.ITuitionService;
import kr.or.ddit.tuition.vo.TuitionVO;
import kr.or.ddit.user.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/tuition")
public class TuitionController {
	
	@Autowired
	public ITuitionService tuiService;
	
	@GetMapping("/tuitionList")
	public String tuitionList(HttpSession session, Model model, TuitionVO tuitionVO) {	// 등록 내역 조회
		 
		UserVO userInfo = (UserVO) session.getAttribute("userInfo");
		String userId = userInfo.getUserId();
		
		List<TuitionVO> tuitionList = tuiService.tuitionList(userId);
		model.addAttribute("tuitionList", tuitionList);
		log.info("tuitionList >> " + tuitionList);
		
		return "tuition/tuitionList";
	}
	
	@GetMapping("/tuiDetail")
	public String tuiConfirm(HttpSession session, Model model, int tlNo) {
		
		UserVO userInfo = (UserVO) session.getAttribute("userInfo");
		
//		int tlNo = tuitionVO.getTlNo();
		
		TuitionVO tuitionVO = tuiService.tuiDetail(tlNo);
		model.addAttribute("tuitionVO", tuitionVO);
		model.addAttribute("userInfo", userInfo);
		
		return "tuition/tuiDetail";
	}
	
	@GetMapping("/tuitionBill")
	public String tuitionBill(HttpSession session, Model model) {
//		log.info("등록금 고지서 체킁 >> " + tuitionVO);
		UserVO userInfo = (UserVO) session.getAttribute("userInfo");
		String userId = userInfo.getUserId(); 
		
		TuitionVO tuitionVO = tuiService.tuiBillDetail(userId);
		if(tuitionVO == null) {
			return "tuition/tuitionBill";
		}
		
		if(tuitionVO.getTlYear() == 2023) {
			model.addAttribute("tuitionVO", tuitionVO);
		}
		
		model.addAttribute("userInfo", userInfo);
		return "tuition/tuitionBill";
	}
	
	@GetMapping("/tuitionInsert")
	public String tuitionInsert(Model model) {
		
		
		
		return "tuition/tuitionInsert";
		
	}
	
}
