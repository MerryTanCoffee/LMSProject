package kr.or.ddit.subject.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.common.vo.DepartmentVO;
import kr.or.ddit.subject.service.ISubjectService;
import kr.or.ddit.subject.vo.SubjectVO;
import kr.or.ddit.user.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/subject")
public class SubjectController {
	
	@Autowired
	private ISubjectService subjectService;
	
	@GetMapping("/info")
	public String subjectInfo(HttpServletRequest req, Model model) {
		
		HttpSession session = req.getSession(false);
		
		if(session != null && session.getAttribute("userInfo") != null) {
			
			List<SubjectVO> subjectList = subjectService.subjectList();
			List<DepartmentVO> deptList = subjectService.deptList();
			String totCnt = subjectService.totalCount();
			
			model.addAttribute("subjectList", subjectList);
			model.addAttribute("deptList", deptList);
			model.addAttribute("totCnt", totCnt);
			
			return "subject/subject-info";
		}else {
			return "redirect:/loginForm";
		}
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	@ResponseBody
	public List<SubjectVO> subjectSearch(@RequestBody SubjectVO subject, Model model) {
		log.info("학과코드 : " + subject.getDeptCode());
		log.info("교과목구분 : " + subject.getSubSort());
		List<SubjectVO> res = subjectService.subjectSearch(subject);
		
		return res;
	}
	
//	@PostMapping("/search")
//	public String subjectSearch(SubjectVO subject, Model model) {
//		log.info("학과코드 : " + subject.getDeptCode());
//		log.info("교과목구분 : " + subject.getSubSort());
//		log.info("검색 교과목명 : " + subject.getSubName());
//		List<SubjectVO> res = subjectService.subjectSearch(subject);
//		model.addAttribute("searchKey", subject);
//		model.addAttribute("subjectList", res);
//		
//		return "subject/subject-info";
//	}
}
