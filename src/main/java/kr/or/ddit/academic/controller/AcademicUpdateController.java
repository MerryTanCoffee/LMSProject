package kr.or.ddit.academic.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.academic.service.IAcademicService;
import kr.or.ddit.academic.vo.AcademicChangeVO;
import kr.or.ddit.user.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/academic")
public class AcademicUpdateController {
	
	
	@Autowired
	private IAcademicService acService; 
	

	@RequestMapping(value ="/applyOffForm", method = RequestMethod.GET)
	public String applyOffForm(HttpSession session, UserVO userVO, Model model){
		UserVO user = (UserVO) session.getAttribute("userInfo");
		
		List<AcademicChangeVO> acVO = acService.getAcChInfo(user.getUserId());
		
		model.addAttribute("acVO",acVO); 
		model.addAttribute("status","ac");
		return "academic/applyOff";
	}
	


	@RequestMapping(value ="/applyOff", method = RequestMethod.POST)
	@ResponseBody
	public List<AcademicChangeVO>  applyOff(@RequestParam Map<String,Object> param, HttpSession session){
			acService.insertApplyOff(param);
			UserVO user = (UserVO) session.getAttribute("userInfo");
			List<AcademicChangeVO> acChVO = acService.getAcChInfo(user.getUserId());
			
		return acChVO;
	}
	
	@RequestMapping(value ="/applyList", method = RequestMethod.GET)
	public String applyList(AcademicChangeVO acChVO, Model model){
		log.info("체크 리스트55 >> " + acChVO);
		
		// 관리자 : 승인 내역 조회
		List<AcademicChangeVO> selectAcceptList = acService.selectAcceptList(acChVO);
								
		// 관리자 : 반려 내역 조회
		List<AcademicChangeVO> rejectList = acService.rejectOffList(acChVO);
		
		// 관리자 : 대기 내역 조회
		List<AcademicChangeVO> waitList = acService.waitOffList(acChVO);
		
		model.addAttribute("acceptList", selectAcceptList);
		model.addAttribute("rejectList", rejectList);
		model.addAttribute("waitList", waitList);
		
		return "academic/applyOffList";
	}
	
	@RequestMapping(value="/updateOffStatus", method = RequestMethod.POST)
	public String updateOffStatus(AcademicChangeVO acChVO, Model model) {
		
		log.debug("여기까지 오니?: " + acChVO);
		acService.updateOffStatus(acChVO);
		
		String stuId = acChVO.getStuId();
		String acStatus = acChVO.getAcStatus();
		
		Map<String,String> paramMap = new HashMap<String, String>();
		paramMap.put("stuId", stuId);
		paramMap.put("acStatus", acStatus);
		if(acStatus.equals("Y")) {
			acService.updateAcaStatus(paramMap);
		}
		
		
		return "redirect:/academic/applyList";
	}
}
