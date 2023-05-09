package kr.or.ddit.facilty.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.facilty.service.FacilityService;
import kr.or.ddit.facilty.service.LockerService;
import kr.or.ddit.facilty.vo.FacilityPaginationInfoVO;
import kr.or.ddit.facilty.vo.FacilityReservationVO;
import kr.or.ddit.facilty.vo.FacilityVO;
import kr.or.ddit.facilty.vo.LockerVO;
import kr.or.ddit.user.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/facility")
public class FaciltyController {

	@Inject
	private FacilityService facilityService;
	
	@Inject
	private LockerService lockerService;
	
	@GetMapping("/usageStatus")
	public String facilityList() {
		return "facilty/list";
	}
	
	// Map으로 보낼때 RequestBody 꼭!
	@ResponseBody
	@RequestMapping(value="/getFacility", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public List<FacilityVO> getFacility(@RequestBody Map<String, String> dataMap){
		// 시설 정보
		List<FacilityVO> facilityList = facilityService.getFacility(dataMap.get("facCode"));
		return facilityList;
	}
	
	@RequestMapping(value="/reservationForm", method = RequestMethod.GET)
	public String reservationForm() {
		return "facilty/form";
	}
	
	@RequestMapping(value="/reservation", method = RequestMethod.POST)
	public String reservation(HttpServletRequest req, FacilityReservationVO facilityReservationVO) {
		// 시설예약하기
		String goPage = "";
		HttpSession session = req.getSession();
		String stuId = ((UserVO) session.getAttribute("userInfo")).getUserId();
		facilityReservationVO.setStuId(stuId);
		ServiceResult result = facilityService.reservation(facilityReservationVO);
		if(result.equals(ServiceResult.OK)) {
			goPage = "redirect:/facility/myReservationList";
		}else {
			goPage = "facilty/list";
		}
		return goPage;
	}
	
	@ResponseBody
	@PostMapping(value="/getFacilityReservation",produces = "application/json;charset=utf-8")
	public List<FacilityReservationVO> getFacilityReservation(@RequestBody Map<String, String> dataMap){
		// 한 개의 시설에 대한 예약정보
		List<FacilityReservationVO> facilityReservList = facilityService.getFacilityReservation(dataMap.get("facCode"));
		
		log.info("facilityReservList", facilityReservList);
		
		return facilityReservList;
	}
	
	
	@RequestMapping(value = "/myReservationList")
	public String myReservationList(
			HttpSession session, LockerVO lv, FacilityReservationVO frvo, Model model,
			@RequestParam(name="page", required = false, defaultValue = "1") int currentPage,
			@RequestParam(required = false)String searchWord) {
		
		
		UserVO userVO = (UserVO) session.getAttribute("userInfo");
		String stuId = userVO.getStudentVO().getStuId();
		
		FacilityPaginationInfoVO<FacilityReservationVO> pagingVO = new FacilityPaginationInfoVO<FacilityReservationVO>();
		
		if(StringUtils.isNotBlank(searchWord)) {
			pagingVO.setSearchWord(searchWord);
			
			model.addAttribute("searchWord", searchWord);
		}
		
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setStuId(stuId);
		
		int totalRecord = facilityService.selectFacilityListCount(pagingVO);
		pagingVO.setTotalRecord(totalRecord);
		
		List<FacilityReservationVO> myfacilityList = facilityService.selectFacilityList(pagingVO);
		pagingVO.setDataList(myfacilityList);
		
		List<LockerVO> myLockerList = lockerService.lockerReservationList(stuId);
		log.info("myLockerList", myLockerList);
		
		model.addAttribute("pagingVO", pagingVO);
		model.addAttribute("myLockerList", myLockerList);
		model.addAttribute("stuId", stuId);
		
		
		
		
		
//		List<FacilityVO> myfacilityList = facilityService.facilityReservationList(stuId);
//		log.info("myfacilityList", myfacilityList);
		
		
		
//		model.addAttribute("myfacilityList", myfacilityList);
		
		
		return "facilty/myReservationList";
	}
	
	
	
	// 시설 예약취소	
	@PostMapping("/facilityReservationCancel")
	public String facilityReservationCancel(FacilityReservationVO facilityReservationVO) {
		String goPage = "";
		facilityReservationVO.setStuId(facilityReservationVO.getStuId());
		ServiceResult result = facilityService.reservationCancel(facilityReservationVO);
		if(result.equals(ServiceResult.OK)) {
			goPage = "redirect:/facility/myReservationList";
		} else {
			goPage = "redirect:/facility/myReservationList";
		}
		return goPage;
	}
	
	
}
