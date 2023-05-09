package kr.or.ddit.schedule.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.exam.vo.ExamVO;
import kr.or.ddit.schedule.service.IScheduleService;
import kr.or.ddit.schedule.vo.ScheduleVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/schedule")
public class ScheduleController {
	@Inject
	private IScheduleService service;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String schedule() throws Exception {
		return "schedule/schedule";
	}
	
	// 자바빈즈 클래스 타입
	// json 객체 타입의 데이터를 만들어서 반환하는 용도로 사용한다.
	// 반환값이 객체 타입인 경우, JSON 타입으로 자동으로 변환된다.
	// 자바빈즈 객체를 리턴할 떄, @ResponseBody 어노테이션을 지정하지 않는 경우 Http 404 에러가 발생한다.
	@ResponseBody
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public JSONArray scheduleList(Model model) throws Exception {
		List<ScheduleVO> list = service.list();
		System.out.println(list);
		
		JSONObject jsonObj = new JSONObject();
		JSONArray jsonArr = new JSONArray();
		//추가한 부분
		Map<String, Object> map = new HashMap<String, Object>();
		
		// 맵안에 집어넣어서 다시 객체에 생성하고 배열에 넣는다....
		for(int i = 0; i < list.size(); i++) {
			map.put("id", list.get(i).getUsNo());
			map.put("title", list.get(i).getUsTitle());
			map.put("content", list.get(i).getUsContent());
			map.put("start", list.get(i).getUsSdate());
			map.put("end", list.get(i).getUsEdate());
			map.put("textColor", list.get(i).getUsFontColor());
			map.put("color", list.get(i).getUsBarColor());

			jsonObj = new JSONObject(map);
			jsonArr.add(jsonObj);
		}
		System.out.println("jsonArr : {}" + jsonArr);
		
		// public JSONArray라 그럼
		return jsonArr;
	}
	@ResponseBody
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String insert(@Validated ScheduleVO schedule, BindingResult result, Model model) throws Exception{
		log.info("register()");
		log.info("title : " + schedule.getUsTitle());
		log.info("content : " + schedule.getUsContent());
		log.info("textColor : " + schedule.getUsFontColor());
		log.info("color : " + schedule.getUsBarColor());
		service.insert(schedule);
		model.addAttribute("msg", "등록 완료");
		return "schedule/schedule";
	}
	@ResponseBody
	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String delete(ScheduleVO schedule, Model model) throws Exception {
		log.info("remove()");
		service.delete(schedule);
		model.addAttribute("msg", "삭제 완료");
		return "schedule/schedule";
	}
	@ResponseBody
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(ScheduleVO schedule, Model model) throws Exception {
		log.info("update()");
		service.update(schedule);
		model.addAttribute("usNo", schedule.getUsNo());
		return "schedule/schedule";
	}
	
	// 미니달력으로 학사일정 표현
	@ResponseBody
	@RequestMapping(value = "/miniSchedule",method = RequestMethod.POST, produces = "application/json;charset-utf-8")
	public List<ScheduleVO> miniSchedule(@RequestBody Map<String, String> dataMap) {
		
		List<ScheduleVO> scheduleList = service.miniSchedule(dataMap.get("datetime"));
		
		return scheduleList;
	}
	
	// 미니달력 - 해당 월의 학사일정 
	@ResponseBody
	@PostMapping(value="/miniScheduleMonth",  produces = "application/json;charset-utf-8")
	public List<ScheduleVO> miniScheduleMonth(@RequestBody Map<String, String> dataMap) {
		
		List<ScheduleVO> scheduleList = service.miniScheduleMonth(dataMap.get("usSdate"));
		
		return scheduleList;
	}
	
}
