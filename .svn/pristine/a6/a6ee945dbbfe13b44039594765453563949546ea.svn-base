package kr.or.ddit.user.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import kr.or.ddit.academic.vo.AcademicVO;
import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.common.vo.DepartmentVO;
import kr.or.ddit.common.vo.PaginationInfoVO;
import kr.or.ddit.common.vo.SummaryCourseInfoVO;
import kr.or.ddit.user.vo.EmployeeVO;
import kr.or.ddit.user.vo.ProfessorVO;
import kr.or.ddit.user.vo.StudentVO;
import kr.or.ddit.user.vo.UserVO;

public interface IUserService {
	public ServiceResult userCheck(UserVO userVO, HttpSession session);

	public String getId(Map<String, Object> findMap);

	public ServiceResult sendPw(Map<String, Object> findMap);

	public ServiceResult updateUser(Map<String, Object> param);

	public ServiceResult insertUserType(Map<String, Object>	param);

	public List<UserVO> selectAllUsers();

	public List<StudentVO> selectAllStudents();

	public List<ProfessorVO> selectAllProfessors();

	public List<EmployeeVO> selectAllEmployees();

	public List<AcademicVO> selectStuAcademics();

	public List<DepartmentVO> selectAllDeparts(String string);

	// 검색한 학생 수
	public int selectStuListCount(PaginationInfoVO<StudentVO> pagingVO);
	
	// 검색한 학생 리스트
	public List<StudentVO> selectStuSearch(Map<String, Object> dataMap);

	// 검색한 교수 수
	public int selectProListCount(PaginationInfoVO<ProfessorVO> pagingVO);

	// 검색한 교수 리스트
	public List<ProfessorVO> selectProSearch(Map<String, Object> dataMap);

	// 검색한 직원 수
	public int selectEmpListCount(PaginationInfoVO<EmployeeVO> pagingVO);

	// 검색한 직원 리스트
	public List<EmployeeVO> selectEmpSearch(Map<String, Object> dataMap);
	
	// 한명의 학생 조회
	public StudentVO selectStudent(String stuId);

	// 한명의 교수 조회
	public ProfessorVO selectProfessor(String proId);

	// 한명의 직원 조회
	public EmployeeVO selectEmployee(String empId);

	public List<Map<String, Object>> getLectureList(String proId);

	// 유저 비밀번호 변경
	public int updPassword(UserVO userVO);

	public UserVO userCheck2(UserVO userVO);
	
	// 학생이 이수한 총 학점 가져오기
	public Map<String, Object> getMyCredits(String stuId);

	public List<SummaryCourseInfoVO> getSummInfo(String stuId);
	
}
