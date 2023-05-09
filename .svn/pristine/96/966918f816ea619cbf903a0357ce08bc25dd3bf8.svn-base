package kr.or.ddit.user.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.ddit.profile.service.IProfileService;
import kr.or.ddit.profile.vo.ProfileVO;
import kr.or.ddit.user.service.IUserService;
import kr.or.ddit.user.vo.EmployeeVO;
import kr.or.ddit.user.vo.ProfessorVO;
import kr.or.ddit.user.vo.StudentVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/user")
public class UserDetailController {

	@Autowired
	private IUserService userService;
	
	@Autowired
	private IProfileService profileService;

	@RequestMapping(value ="/stuDetail", method = RequestMethod.GET)
	public String stuDetail(String stuId, Model model) {
		
		StudentVO student = userService.selectStudent(stuId);
		model.addAttribute("student", student);
		model.addAttribute("status","s");
		
		int profileNo = student.getProfileNo();
		if(profileNo > 0) {
			ProfileVO profile = profileService.getProfile(profileNo);
			model.addAttribute("profile",profile);
		}
		log.info("profileNo >> " + profileNo);
		
		return"user/userDetail";
	}
	
	
	
	@RequestMapping(value ="/proDetail", method = RequestMethod.GET)
	public String proDetail(String proId, Model model) {
		
		ProfessorVO professor = userService.selectProfessor(proId);
		model.addAttribute("professor", professor);
		model.addAttribute("status","p");
		
		int profileNo = professor.getProfileNo();
		if(profileNo > 0) {
			ProfileVO profile = profileService.getProfile(profileNo);
			model.addAttribute("profile",profile);
		}
		log.info("profileNo >> " + profileNo);
		
		return"user/userDetail";
	}
	
	@RequestMapping(value ="/empDetail", method = RequestMethod.GET)
	public String empDetail(String empId, Model model) {
		
		EmployeeVO employee = userService.selectEmployee(empId);
		model.addAttribute("employee", employee);
		model.addAttribute("status","e");
		
		int profileNo = employee.getProfileNo();
		if(profileNo > 0) {
			ProfileVO profile = profileService.getProfile(profileNo);
			model.addAttribute("profile",profile);
		}
		log.info("profileNo >> " + profileNo);
		
		return"user/userDetail";
	}
}
