package kr.or.ddit.facilty.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.facilty.service.LockerService;
import kr.or.ddit.facilty.vo.HallVO;
import kr.or.ddit.facilty.vo.LockerVO;
import kr.or.ddit.user.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/locker")
public class LockerReservationController {
	
	@Autowired
	private LockerService lockerService;
	
	
	@ResponseBody
	@RequestMapping(value="/getLockerList", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public Map<String, Object> getLockerListAjax(@RequestBody Map<String, String> dataMap, HttpServletRequest req){
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		// hallCode에 대한 사물함 정보들(List)
		// hallCode에 대한 사물함 정보와 hallCode와 stuId에 해당하는 예약 정보
		List<LockerVO> lockerList = lockerService.getLockerListAjax(dataMap.get("hallCode"));
		
		// 회원 id에 해당하는 사물함 예약정보(hallCode에 해당하는 데이터임)
		HashMap<String, String> paramMap = new HashMap<String, String>();
		
		HttpSession session = req.getSession();
		UserVO userVO = (UserVO) session.getAttribute("userInfo");
		
		paramMap.put("stuId", userVO.getUserId());
		paramMap.put("hallCode", dataMap.get("hallCode"));
		
		Map<String, String> lockInfo = lockerService.getMyLockerInfo(paramMap);	// 내가 예약한 사물함 정보
		
		
		resultMap.put("list", lockerList);
		resultMap.put("mylocker", lockInfo);
		
		return resultMap;
	}
	
	
	@GetMapping("/usageStatus")
	public String lockerList(HttpSession session, LockerVO lockerVO, Model model) {
		// 사물함 이용현황
		log.debug("체킁! 요기루 들어왔닁?");
		
		List<HallVO> hallList= lockerService.hallList();
		
		log.info("hallList: " + hallList);
		
		model.addAttribute("hallList", hallList);
		
		return "facilty/lockerList";
	}
	
	
	@PostMapping(value= "/lockerReservation")
	public String lockerReservation(HttpServletRequest req, LockerVO lockerVO) {
		
		// 사물함 예약하기
		String goPage = "";
		HttpSession session = req.getSession();
		String stuId = ((UserVO) session.getAttribute("userInfo")).getUserId();
		lockerVO.setStuId(stuId);
		ServiceResult result = lockerService.insertReserve(lockerVO);
		if(result.equals(ServiceResult.OK)) {
			goPage = "redirect:/facility/myReservationList";
		} else {
			goPage = "facilty/lockerList";
		}
		
		return goPage;
	}
	
	@PostMapping("/lockerReservationCancel")
	public String lockerReservationCancel(LockerVO lockerVO) {
		
		String goPage = "";
		
		lockerVO.setStuId(lockerVO.getStuId());
		
		ServiceResult result = lockerService.lockerReservationCancel(lockerVO);
		
		if(result.equals(ServiceResult.OK)) {
			goPage = "redirect:/facility/myReservationList";
		} else {
			goPage = "redirect:/facility/myReservationList";
		}
		
		return goPage;
	}
	
	
}
