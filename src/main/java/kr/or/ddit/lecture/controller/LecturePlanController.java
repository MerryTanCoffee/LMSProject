package kr.or.ddit.lecture.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sun.javafx.util.Utils;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.common.vo.CurrentInfoVO;
import kr.or.ddit.lecture.service.ILectureService;
import kr.or.ddit.lecture.vo.LecRoomScheduleVO;
import kr.or.ddit.lecture.vo.LectureIndexVO;
import kr.or.ddit.lecture.vo.LectureRoomVO;
import kr.or.ddit.lecture.vo.LectureVO;
import kr.or.ddit.subject.vo.SubjectVO;
import kr.or.ddit.user.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/lecture")
public class LecturePlanController {
	
	@Autowired
	private ILectureService lectureService;
	
	@RequestMapping(value = "/lecPlanForm", method = RequestMethod.GET)
	public String lecPlanForm(
			HttpServletRequest req, 
			Model model) {
		
		HttpSession session = req.getSession(false);
		
		if(session != null && session.getAttribute("userInfo") != null) {
			UserVO userInfo = (UserVO) session.getAttribute("userInfo");
			
			List<SubjectVO> proSubjectList = lectureService.subjectList(userInfo.getProfessorVO().getDeptCode());
			List<LectureVO> applicationList = lectureService.applicationList(userInfo.getUserId());
			CurrentInfoVO currentInfo = lectureService.getCurrentInfo();
			for (LectureVO lec : applicationList) {
				log.info("개설신청현황: " + lec.toString());
			}
			
			model.addAttribute("proSubjectList", proSubjectList);
			model.addAttribute("currentInfo", currentInfo);
			if(applicationList != null) {
				model.addAttribute("applicationList", applicationList);
			}
//			if(StringUtils.isNotEmpty(msg)) {
//				model.addAttribute("msg", msg);
//				log.info("완료메세지: " + msg);
//			}
			return "lecture/lecturePlan";
		   
		}else {
		     return "redirect:/loginForm";
		}
		
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String lecPlanRegister(
			@ModelAttribute(value = "LectureVO") LectureVO lecturePlan, 
			Model model) {
		log.info(lecturePlan.toString());
		log.info(lecturePlan.getLecIdxList().toString());
		String goPage = "";
		ServiceResult result = lectureService.lecPlanRegister(lecturePlan);
		
		if(result.equals(ServiceResult.OK)) {
			goPage = "redirect:/lecture/lecPlanForm";
		} else {
			goPage = "redirect:/lecture/lecPlanForm";
		}
		return goPage;
	}
	
	@RequestMapping(value = "/empLecPlanList", method = RequestMethod.GET)
	public String empLecPlanList(Model model) {
		List<LectureVO> empLecPlanList = lectureService.empLecPlanList();
		
		for (LectureVO lec : empLecPlanList) {
			log.info("개설강의: " + lec.toString());
		}
		
		model.addAttribute("lecPlanList", empLecPlanList);
		
		return "lecture/empLecturePlanList";
	}
	
	@RequestMapping(value = "/lecPlanRefuse", method = RequestMethod.POST)
	@ResponseBody
	public String lecPlanRefuse(
			@RequestParam Map<String, String> refuseMap
			) {
		lectureService.lecPlanRefuse(refuseMap);
		
		return "success";
	}
	
	@RequestMapping(value = "/lecPlanOk", method = RequestMethod.POST, produces = "application/text; charset=UTF-8" )
	@ResponseBody
	public String lecPlanOk(@RequestParam Map<String, Object> lecOkMap) {
		log.info(lecOkMap.toString());
		ServiceResult result = null;
		String msg = "";
		result = lectureService.lecPlanOk(lecOkMap);
		
		if(result.equals(ServiceResult.OK)) {
			log.info("lecDivide: " + lecOkMap.get("lecDivide"));
			msg = "ok";
		}else {
			msg = "fail";
		}
		return msg;
	}
	
	@RequestMapping(value = "/lecRoomSchedule", method = RequestMethod.GET)
	@ResponseBody
	public List<LecRoomScheduleVO> lecRoomSchedule(@RequestParam("lrCode") String lrCode){
		log.info("lrCode: " + lrCode);
		List<LecRoomScheduleVO> lecRoomSchedule = lectureService.roomSchedule(lrCode);
		return lecRoomSchedule;
	}
	
}
