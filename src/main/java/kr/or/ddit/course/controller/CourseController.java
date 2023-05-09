package kr.or.ddit.course.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.common.vo.CurrentInfoVO;
import kr.or.ddit.common.vo.DepartmentVO;
import kr.or.ddit.common.vo.SummaryCourseInfoVO;
import kr.or.ddit.course.service.ICourseService;
import kr.or.ddit.course.vo.CourseOpenVO;
import kr.or.ddit.course.vo.CourseVO;
import kr.or.ddit.user.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/course")
public class CourseController {

	@Autowired
	private ICourseService courseService;

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String courseMain(HttpServletRequest req, Model model) throws JsonProcessingException {

		HttpSession session = req.getSession(false);

		if (session != null && session.getAttribute("userInfo") != null) {
			UserVO userInfo = (UserVO) session.getAttribute("userInfo");
			String stuId = userInfo.getUserId();

			List<CourseOpenVO> courseOpenList = courseService.openList();
			List<DepartmentVO> deptList = courseService.deptInfoList();
			List<CourseVO> basketList = courseService.basketList(stuId);
			log.info(courseOpenList.toString());
			log.info(deptList.toString());

			ObjectMapper mapper = new ObjectMapper();

			String jsonString = mapper.writeValueAsString(basketList);
			log.info("파싱한 data: " + jsonString);

			model.addAttribute("courseOpenList", courseOpenList);
			model.addAttribute("deptList", deptList);
			model.addAttribute("basketList", basketList);
			model.addAttribute("basketJson", jsonString);

			return "course/courseMain";

		} else {
			return "redirect:/login";
		}
	}

	@RequestMapping(value = "/apply", method = RequestMethod.POST)
	@ResponseBody
	public String courseApply(@RequestParam Map<String, Object> courseMap, HttpSession session) {
		log.info("courseMap: " + courseMap.toString());

		UserVO userInfo = (UserVO) session.getAttribute("userInfo");
		String stuId = userInfo.getUserId();
		courseMap.put("stuId", stuId);

		courseService.courseApply(courseMap);

		return "ok";
	}

	@RequestMapping(value = "/cancel", method = RequestMethod.POST)
	@ResponseBody
	public String courseCancel(@RequestParam Map<String, Object> courseMap, HttpSession session) {
		log.info("courseMap: " + courseMap.toString());
		UserVO userInfo = (UserVO) session.getAttribute("userInfo");
		String stuId = userInfo.getUserId();
		courseMap.put("stuId", stuId);

		courseService.courseCancel(courseMap);

		return "ok";
	}

	@RequestMapping(value = "/basketInsert", method = RequestMethod.POST)
	@ResponseBody
	public String basketInsert(@RequestParam Map<String, Object> courseMap, HttpSession session) {
		log.info("courseMap: " + courseMap.toString());
		ServiceResult result = null;

		UserVO userInfo = (UserVO) session.getAttribute("userInfo");
		String stuId = userInfo.getUserId();
		courseMap.put("stuId", stuId);

		result = courseService.basketInsert(courseMap);

		if (result.equals(ServiceResult.OK)) {
			return "ok";
		} else {
			return "fail";
		}
	}

	@RequestMapping(value = "/search", method = RequestMethod.POST)
	@ResponseBody
	public List<CourseOpenVO> courseSearch(@RequestParam Map<String, Object> searchData) {
		List<CourseOpenVO> courseList = courseService.courseSearch(searchData);

		return courseList;
	}

	@GetMapping("/deptSelect/{deptCode}")
	public ResponseEntity<List<CourseOpenVO>> deptSelect(@PathVariable String deptCode) {

		log.info("deptCode: " + deptCode);
		List<CourseOpenVO> courseOpenList = courseService.getCourseOpenList(deptCode);
		HttpStatus status = courseOpenList.isEmpty() ? HttpStatus.NO_CONTENT : HttpStatus.OK;
		return new ResponseEntity<>(courseOpenList, status);
	}

	// 수강이력조회
	@GetMapping("/history")
	public String courseHistory(HttpServletRequest req, Model model) {

		HttpSession session = req.getSession(false);

		if (session != null && session.getAttribute("userInfo") != null) {

			UserVO userInfo = (UserVO) session.getAttribute("userInfo");

			// 학생 수강완료한 전체 전필, 전선, 교필, 교선 각각의 총 이수학점(현재 설정 학기 제외)
			Map<String, Object> totCreditMap = courseService.getTotCredit(userInfo.getUserId());
			Map<String, Object> stuInfo = courseService.getStuInfo(userInfo.getUserId());
			List<Map<String, Object>> courseHistoryList = courseService.getCourseHistory(userInfo.getUserId());
			log.info("courseHistoryList: " + courseHistoryList.toString());

			model.addAttribute("totCredit", totCreditMap);
			model.addAttribute("stuInfo", stuInfo);
			model.addAttribute("courseHistoryList", courseHistoryList);
			return "course/courseHistory";
		} else {
			return "redirect:/login";
		}
	}

	// 학생 수강이력 상세조회
	@PostMapping("/detail")
	@ResponseBody
	public List<Map<String, Object>> courseHistoryDetail(@RequestParam Map<String, Object> param, HttpSession session) {

		UserVO userInfo = (UserVO) session.getAttribute("userInfo");
		String userId = userInfo.getUserId();
		param.put("stuId", userId);
		List<Map<String, Object>> historyDetailList = courseService.getHistoryDetailList(param);

		return historyDetailList;
	}

	@GetMapping("/current")
	public String courseCurrentList(HttpServletRequest req, Model model) throws JsonProcessingException {
		HttpSession session = req.getSession(false);

		if (session != null && session.getAttribute("userInfo") != null) {

			UserVO userInfo = (UserVO) session.getAttribute("userInfo");
			String stuId = userInfo.getUserId();

			List<SummaryCourseInfoVO> myCourseList = courseService.getMyCourseList(stuId);
			CurrentInfoVO currentInfo = courseService.getCurrentInfo();
			List<Map<String, Object>> myTimeTableList = courseService.getMyTimeTable(stuId);

			ObjectMapper mapper = new ObjectMapper();

			String myTimeTable = mapper.writeValueAsString(myTimeTableList);
			log.info("파싱한 data: " + myTimeTable);

			log.info("myCourseList>>" + myCourseList);

			model.addAttribute("myTimeTable", myTimeTable);
			model.addAttribute("currentInfo", currentInfo);
			model.addAttribute("myCourseList", myCourseList);

			return "course/courseCurrent";
		} else {
			return "redirect:/login";
		}
	}

}
