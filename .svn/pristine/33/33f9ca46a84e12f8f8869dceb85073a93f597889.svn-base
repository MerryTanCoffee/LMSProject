package kr.or.ddit.chat.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.chat.service.IChatService;
import kr.or.ddit.chat.vo.ChatVO;
import kr.or.ddit.profile.service.IProfileService;
import kr.or.ddit.profile.vo.ProfileVO;
import kr.or.ddit.study.vo.StudyVO;
import kr.or.ddit.user.service.IUserService;
import kr.or.ddit.user.vo.EmployeeVO;
import kr.or.ddit.user.vo.ProfessorVO;
import kr.or.ddit.user.vo.StudentVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/chat")
public class ChatController {
	
	@Autowired
	private IChatService chatService;
	
	@Autowired
	private IProfileService profileService;
	
	@Autowired
	private IUserService userService;
	

	@ResponseBody
	@PostMapping("/detail")
	public List<ChatVO> chatdetail(@RequestParam Map<String,Object> param) {
		
		
		List<ChatVO> chatDetail = chatService.chatDetail(param);
		
		return chatDetail;
	}

	@ResponseBody
	@PostMapping("/list")
	public List<StudyVO> chatList(@RequestParam Map<String,Object> param, HttpSession session) {
		
		String userId = (String) param.get("userId");
		List<StudyVO> study = chatService.selectMyStudy(userId);
		
		return study;
	}
	
	@ResponseBody
	@RequestMapping(value="/chatting",method=RequestMethod.POST)
	public String insertChat(@RequestParam Map<String, String> param){
		chatService.insertChat(param);
	 return "ok";
	}
	
	
	@ResponseBody
	@RequestMapping(value="/chatMember",method=RequestMethod.POST)
	public List<StudentVO> chatMember(@RequestParam Map<String, String> param){
		
		List<StudentVO> chatMemberList =  chatService.chatMember(param);
		return chatMemberList;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/chatMemProfile",method=RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> chatMemProfile(@RequestParam Map<String,String> paramMap, HttpSession session) throws Exception {
		
		String userType = paramMap.get("userType"); 
		String userId = paramMap.get("userId"); 
		Map<String, Object> map = new HashMap<>();
		
		
		if (userType.equals("STU")) {
			StudentVO student = userService.selectStudent(userId);
			int profileNo = student.getProfileNo();
			ProfileVO profile = profileService.getProfile(profileNo);
			map.put("profile", profile);
		}
		
		if(userType.equals("PRO")) {
			ProfessorVO professor = userService.selectProfessor(userId);
			int profileNo = professor.getProfileNo();
			ProfileVO profile = profileService.getProfile(profileNo);
			map.put("profile", profile);
		}
		
	    if(userType.equals("EMP")) {
			EmployeeVO employee = userService.selectEmployee(userId);
			int profileNo = employee.getProfileNo();
			ProfileVO profile = profileService.getProfile(profileNo);
			map.put("profile", profile);
		}
		HttpHeaders headers = new HttpHeaders();
	    return new ResponseEntity<Map<String, Object>>(map, headers, HttpStatus.OK);
	}
	
	
}
