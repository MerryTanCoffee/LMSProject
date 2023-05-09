package kr.or.ddit.study.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.msg.service.IMsgService;
import kr.or.ddit.msg.vo.MsgVO;
import kr.or.ddit.study.service.IStudyService;
import kr.or.ddit.study.vo.StudyVO;
import kr.or.ddit.user.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/study")
public class MyStudyController {
	@Inject
	private IStudyService service;
	@Inject
	private IMsgService msgService;
	
	@GetMapping("/card")
	public String studyList(HttpSession session,  Model model) {
		UserVO userVO = (UserVO) session.getAttribute("userInfo");
		String userId = userVO.getUserId();
		
		List<StudyVO> study = service.selectMyStudy(userId);
		List<MsgVO> standBystudy = msgService.studySendMsgList(userId);
		
		model.addAttribute("standBystudyVO", standBystudy);
		model.addAttribute("studyVO", study);
		log.info("userId" + userId);
		log.info("studyVO" + study);
		log.info("standBystudy" + standBystudy);
		
		
		return "study/studyCard";
	}
	
	/*
	 * @GetMapping("/detail") public String studyList2(HttpSession session, StudyVO
	 * studyVO, Model model) { UserVO userVO = (UserVO)
	 * session.getAttribute("userInfo"); String userId = userVO.getUserId();
	 * 
	 * List<StudyVO> study = service.selectStudy(userId);
	 * 
	 * model.addAttribute("studyVO", study);
	 * 
	 * return "study/studyList"; }
	 */
	
	@GetMapping("/detail/{studyCode}")
	public String boardDetail(@PathVariable String studyCode, HttpServletRequest req,StudyVO studyVO, String active ,Model model) {
		List<StudyVO> study = service.selectOneStudy(studyCode);
		String studyName = service.selectStudyName(studyCode);
		
		model.addAttribute("studyVO", study);
		model.addAttribute("studyName", studyName);
		model.addAttribute("studyCode", studyCode);
		
		HttpSession session = req.getSession();
		UserVO userVO = (UserVO) session.getAttribute("userInfo");
		String userId = userVO.getUserId();
		
		studyVO.setStuId(userId);
		studyVO.setStudyCode(studyCode);
		StudyVO studyL = service.selectStudyLeader(studyVO);
		model.addAttribute("studyL", studyL);
		model.addAttribute("studyCode", studyCode);
		log.info("리더여부" + studyL);
		
		MsgVO msgVO = new MsgVO();
		msgVO.setStudyTitle(studyName);
		msgVO.setMsgReceiver(userId);
		List<MsgVO> msgList = msgService.studyReceiveMsgList(msgVO);
		
		model.addAttribute("msgList", msgList);
		log.info("msgList>>>" + msgList);
		
		if(active == null) {
			model.addAttribute("active", "1");
		}else {
			model.addAttribute("active", active);
		}
		
		return "study/studyList";
	}
	
	@PostMapping("/insert")
	@ResponseBody
	public String insertStuMem(StudyVO studyVO) {
		ServiceResult result = null;
		result = service.insertStuMem(studyVO);
		return "ok";
	}
	
	@GetMapping("/getStuTime/{stuId}")
	@ResponseBody
	public List<Map<String, Object>> studentTimeTbl(@PathVariable String stuId){
		List<Map<String, Object>> stuTimeTbl = service.getStuTimeTbl(stuId);
		
		return stuTimeTbl;
	}
}
