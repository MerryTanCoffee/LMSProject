package kr.or.ddit.calendar.controller;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.calendar.service.ICalService;
import kr.or.ddit.calendar.vo.CalendarVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/calendar")
public class CalController {
	@Inject
	private ICalService service;

	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String calendar() throws Exception {
		return "calendar/calendar";
	}
	// 자바빈즈 클래스 타입
	// json 객체 타입의 데이터를 만들어서 반환하는 용도로 사용한다.
	// 반환값이 객체 타입인 경우, JSON 타입으로 자동으로 변환된다.
	// 자바빈즈 객체를 리턴할 떄, @ResponseBody 어노테이션을 지정하지 않는 경우 Http 404 에러가 발생한다.
	@ResponseBody
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	public JSONArray calendarList(@RequestBody Map<String, String> param, Model model) throws Exception {
		String studyCode = param.get("studyCode");
		
		log.info("스터디코드>>>"+ studyCode);
		List<CalendarVO> list = service.list(studyCode);  // size 0
		JSONObject jsonObj = new JSONObject();
		JSONArray jsonArr = new JSONArray();
		 if(list.size() == 0) {
		        JSONObject emptyJson = new JSONObject();
		        jsonArr.add(emptyJson);
		    } 
		//추가한 부분
		Map<String, Object> map = new HashMap<String, Object>();
		// 맵안에 집어넣어서 다시 객체 생성하고 배열에 넣는거같은디....
		for (int i = 0; i < list.size(); i++) {
//			map.put("groupId", list.get(0).getStudyCode());
			map.put("id", list.get(i).getScNo());
			// title,content,start,end는 거스르면 안되는 풀캘린더의 법칙이라고 봐야한다. VO쓰면 안됨.
			map.put("title", list.get(i).getScTitle());
			map.put("content", list.get(i).getScContent());
			map.put("start", list.get(i).getScSdate());
			map.put("end", list.get(i).getScEdate());
			map.put("color", list.get(i).getScBarColor());
			map.put("textColor", list.get(i).getScFontColor());

			jsonObj = new JSONObject(map);
			jsonArr.add(jsonObj);
		}

		System.out.println("jsonArr : {}" + jsonArr);

		// public JSONArray라 그럼
		return jsonArr;
	}

	@ResponseBody
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String insert(@Validated CalendarVO calendar, BindingResult result, Model model) throws Exception {
		log.info("register()");
		log.info("title : " + calendar.getScTitle());
		log.info("content : " + calendar.getScContent());
		log.info("groupId : " + calendar.getStudyCode());
		log.info("barColor : " + calendar.getScBarColor());
		log.info("fontColor : " + calendar.getScFontColor());
		service.insert(calendar);
		// 의존성 주입 안하면 어케 써야할까가 아니라
		// 주입안하면 service단이랑 연결될 건덕지가 없지...
		// service.register(calendar);
		//
		model.addAttribute("msg", "등록 성공");// 이게 왜있지??아무상호작용안함.
		return "study/studyList";
	}
	@ResponseBody
	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String delete(CalendarVO calendar, Model model) throws Exception {
		log.info("remove()");
		service.delete(calendar);
		model.addAttribute("msg", "삭제 완료");
		return "calendar/calendar";
	}
	@ResponseBody
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(CalendarVO calendar, Model model) throws Exception {
		log.info("update()");
		service.update(calendar);
		model.addAttribute("scNo", calendar.getScNo());
		return "calendar/calendar";
	}
}
