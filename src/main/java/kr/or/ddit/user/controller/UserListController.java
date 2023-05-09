package kr.or.ddit.user.controller;

import java.util.List;
import java.util.Map;

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
import kr.or.ddit.user.service.IUserService;
import kr.or.ddit.user.vo.EmployeeVO;
import kr.or.ddit.user.vo.ProfessorVO;
import kr.or.ddit.user.vo.StudentVO;
import kr.or.ddit.common.vo.PaginationInfoVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/user")
public class UserListController {
	
	@Autowired
	private IUserService userService;
	
	
	@RequestMapping(value="/list")
	public String studentList(Model model) {		
		
		List<StudentVO> student = userService.selectAllStudents();
		model.addAttribute("student",student);
		model.addAttribute("status","s");model.addAttribute("status","s");
		log.info("student >> " + student);
		
		return "user/userList";
	}
	
	

	@GetMapping("/proList")
	public String proList(Model model) {		

		
		List<ProfessorVO> professor = userService.selectAllProfessors();
		model.addAttribute("professor",professor);
		model.addAttribute("status","p");
		log.info("professor >> " + professor);
		
		return "user/userList";
	}
	
	@GetMapping("/empList")
	public String empList(Model model) {		
		
		List<EmployeeVO> employee = userService.selectAllEmployees();
		model.addAttribute("employee",employee);
		model.addAttribute("status","e");
		log.info("employee >> " + employee);
		
		return "user/userList";
	}
	
	@RequestMapping(value = "/exList", method = RequestMethod.GET)
	public String userList(HttpSession session, Model model) {
//	    List<String> excelValues = (List<String>) session.getAttribute("excelValues");
	    List<String> excelList = (List<String>) session.getAttribute("excelList");
	    String status = (String) session.getAttribute("status");
	    
//	    model.addAttribute("excelValues", excelValues);
	    model.addAttribute("excelList", excelList);
	    model.addAttribute("status", status);
//	    log.info("excelValues >> " + excelValues);
	    
	    return "user/userList";
	}
	
	
	@ResponseBody
	@RequestMapping(value="/departList", method=RequestMethod.POST, produces="application/json;charset=utf-8")
	public List<DepartmentVO> getDepartList(@RequestBody Map<String, String> dataMap) {
		
		List<DepartmentVO> department = userService.selectAllDeparts(dataMap.get("collCode"));
		
		return department;
	}
	
	@ResponseBody
	@RequestMapping(value="/stuSearch", method=RequestMethod.POST, produces="application/json;charset=utf-8")
	public List<StudentVO> getStuSearchList(@RequestBody Map<String,Object> dataMap) {

		
		PaginationInfoVO<StudentVO> pagingVO = new PaginationInfoVO<StudentVO>();
		
		// searchWord가 공백이 아니면 검색을 한 상태일 테니까
		pagingVO.setCurrentPage(1);
		int totalRecord = userService.selectStuListCount(pagingVO);
		dataMap.put("endRow",totalRecord);
		List<StudentVO> stuSearch = userService.selectStuSearch(dataMap);
		
		return stuSearch;
 	}

	@ResponseBody
	@RequestMapping(value="/proSearch", method=RequestMethod.POST, produces="application/json;charset=utf-8")
	public List<ProfessorVO> getProSearchList(@RequestBody Map<String,Object> dataMap) {
		
		
		PaginationInfoVO<ProfessorVO> pagingVO = new PaginationInfoVO<ProfessorVO>();
		
		// searchWord가 공백이 아니면 검색을 한 상태일 테니까
		pagingVO.setCurrentPage(1);
		int totalRecord = userService.selectProListCount(pagingVO);
		dataMap.put("endRow",totalRecord);
		List<ProfessorVO> proSearch = userService.selectProSearch(dataMap);
		log.info("totalRecord >> " + totalRecord);
		log.info("proSearch >> " + proSearch);
		
		return proSearch;
	}
	
	@ResponseBody
	@RequestMapping(value="/empSearch", method=RequestMethod.POST, produces="application/json;charset=utf-8")
	public List<EmployeeVO> getempSearchList(@RequestBody Map<String,Object> dataMap) {
		
		
		PaginationInfoVO<EmployeeVO> pagingVO = new PaginationInfoVO<EmployeeVO>();
		
		// searchWord가 공백이 아니면 검색을 한 상태일 테니까
		pagingVO.setCurrentPage(1);
		int totalRecord = userService.selectEmpListCount(pagingVO);
		dataMap.put("endRow",totalRecord);
		List<EmployeeVO> empSearch = userService.selectEmpSearch(dataMap);
		log.info("totalRecord >> " + totalRecord);
		log.info("empSearch >> " + empSearch);
		
		return empSearch;
	}
}
