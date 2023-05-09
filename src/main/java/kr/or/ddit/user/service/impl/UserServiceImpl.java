package kr.or.ddit.user.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import kr.or.ddit.academic.vo.AcademicVO;
import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.common.vo.DepartmentVO;
import kr.or.ddit.common.vo.PaginationInfoVO;
import kr.or.ddit.common.vo.SummaryCourseInfoVO;
import kr.or.ddit.mapper.UserMapper;
import kr.or.ddit.user.service.IUserService;
import kr.or.ddit.user.vo.EmployeeVO;
import kr.or.ddit.user.vo.ProfessorVO;
import kr.or.ddit.user.vo.StudentVO;
import kr.or.ddit.user.vo.UserVO;

@Service
public class UserServiceImpl implements IUserService {
	
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private JavaMailSender mailSender;
	
	@Override
	public ServiceResult userCheck(UserVO userVO, HttpSession session) {
		ServiceResult result = null;
		// 사용자 등록 여부 체크
		UserVO user = userMapper.userCheck(userVO);
		if(user != null) {	// 사용자 정보 존재했을 경우
			if(userVO.getUserType().equals("STU")) {	// 학생일 때
				UserVO student = userMapper.getStudent(userVO);

				if(student != null) {
					session.setAttribute("userInfo", student);
					result = ServiceResult.OK;
				}else {
					result = ServiceResult.FAILED;
				}
			}
			if(userVO.getUserType().equals("PRO")) {	// 교수일 때
				UserVO professor = userMapper.getProfessor(userVO);
				if(professor != null) {
					session.setAttribute("userInfo", professor);
					result = ServiceResult.OK;
				}else {
					result = ServiceResult.FAILED;
				}
			}
			if(userVO.getUserType().equals("EMP")) {	// 직원일 때
				UserVO employee = userMapper.getEmployee(userVO);
				if(employee != null) {
					session.setAttribute("userInfo", employee);
					result = ServiceResult.OK;
				}else {
					result = ServiceResult.FAILED;
				}
			}
		}else {
			result = ServiceResult.FAILED;
		}
		return result;
	}

	@Override
	public String getId(Map<String, Object> findMap) {
		String userId = userMapper.getId(findMap);
		
		return userId;
	}

	@Override
	public ServiceResult sendPw(Map<String, Object> findMap) {
		int cnt = userMapper.userCheck2(findMap);
		ServiceResult result = null;
		
		if(cnt > 0) {
			String reciver = (String) findMap.get("userEmail");
			String userId = (String) findMap.get("userId");
			String title = "대원대학교 관리팀입니다.";
			String imsiPw = "IMSI" + RandomStringUtils.randomAlphanumeric(10);
//			String content = "임시 비밀번호는 <h3>[ " + imsiPw + " ] </h3> 입니다. <br>로그인 후 비밀번호를 변경해주세요.";
			
			String content = "";
			content += "<table width='100%' border='0' cellpadding='0' cellspacing='0' style='padding: 32px 0 32px 0;background-color: #f1f3f5;'>";
			content += "	<tbody><tr>";
			content += "	<td>";
			content += "		<table align='center' width='600' border='0' cellpadding='0' cellspacing='0' style='margin: auto; padding: 0 20px 0 20px;background-color: #fff; border-top:4px solid #134aa9;'>";
			content += "	<tbody><tr>";
			content += "		<td style='padding: 15px 0 15px 0;'>";
	        content += "	<table>";
	        content += "		<tbody>";
	        content += "			<tr>";
	        content += "        	   	<td style='font-size: 25px; font-weight: 600; text-align: center;'>DAEWON UNIVERSITY</td>";
	        content += "			</tr>";
	        content += "		</tbody>";
	        content += "	</table>";
	        content += "	</td>";          
	        content += "	</tr>";
	        content += "	<tr>";
	        content += "		<td style='border-bottom: 1px solid #f1f3f5;'></td>";
	        content += "	</tr>";      
	        content += "	<tr>";
	        content += "		<td style='overflow: hidden; padding: 28px 0 28px 0; font-size: 20px; font-weight: 500; line-height: 1.31; letter-spacing: -0.3px; color: #1b1c1d; word-break: break-all;'><strong style='color:#134aa9;'>임시 비밀번호</strong> 안내입니다.</td>";
	        content += "	</tr>";        
	        content += "	<tr>";
	        content += "		<td style='font-size: 15px; line-height: 1.47; letter-spacing: -0.3px; color: #1b1c1d;'>";	
	        content += "			안녕하세요. 대원대학교 관리팀입니다. <br>요청하신 임시 비밀번호가 발급되었습니다. <br><strong style=\"color:#134aa9;\">'비밀번호 변경하기' </strong>버튼을 눌러 비밀번호를 변경해주세요.";
	        content += "		</td>";
	        content += "	</tr>";
	        content += "    <tr><td style='padding: 32px 0 0 0;'></td></tr>";
	        content += "	<tr>";
	        content += "    	<td style='background-color: #d5def5;'>";
	        content += "			<br>";
	        content += "			<br>";
	        content += "        	<p style='text-align:center; font-size: 25px;'>" +imsiPw +"</p>";
	        content += "			<br>";
	        content += "			<br>";
	        content += "		</td>";
	        content += "	</tr>";
	        content += "	<tr><td style='padding: 28px 0 0 0;'></td></tr>";
	        content += "	<tr>";
	        content += "		<td style='text-align:center;'>";
	        content += "			<a href='http://localhost/user/updPasswordForm?userId="+ userId +"'style='font-size: 15px; letter-spacing: -0.3px; font-weight: bold; background-color: #134aa9; color: #fff; display: inline-block; box-sizing: border-box; padding: 15px 20px; width: 180px; height: auto; line-height: normal; text-align: center; text-decoration: none; border-radius: 4px; cursor: default;' rel='noopener noreferrer' target='_blank'>비밀번호 변경하기</a>";   
	        content += "		</td>";          
	        content += "	</tr>";
	        content += "	<tr><td style='padding: 28px 0 0 0;'></td></tr>";
	        content += "	<tr>";     
	        content += "		<td style='border-top: 1px solid #f1f3f5;'></td>";
	        content += "	</tr>";
	        content += "	<tr>";
	        content += "		<td style='padding: 21px 0 20px 0;'>";
	        content += "			<table></tr>";
	        content += "				<tbody><tr>";
	        content += "					<td style='font-size: 13px; line-height: 1.38; letter-spacing: -0.3px; color: #9da0a4;'>함께 여는 미래, 함께 가는 미래, 대원대학교입니다.</td>";
	        content += "					</tr>";          
	        content += "					<tr>";            
	        content += "						<td style='font-size: 13px; line-height: 1.38; letter-spacing: -0.3px; color: #9da0a4;'>©DAEWON univ. | 대전광역시 중구 계룡로 846 </td>";
	        content += "					</tr>"; 
	        content += "				</tbody></table>";
	        content += "		</td>";
	        content += "	</tr>";          
	        content += "	</tbody></table>";
	        content += "	</td>";
	        content += "	</tr>";
	        content += "</tbody></table>";
	      
			sendMail(reciver, title, content);
			
			findMap.put("imsiPw", imsiPw);
			userMapper.saveImsiPw(findMap);
			result = ServiceResult.OK;
		}
		return result;
	}

	public void sendMail(String reciver, String title, String content) {
		MimeMessage mail = mailSender.createMimeMessage();
		try {
			MimeMessageHelper mailHelper = 
					new MimeMessageHelper(mail, "UTF-8");
			String from = "대원대학교 관리팀";
			
			mailHelper.setFrom("Daewon@ddit.co.kr", from);
			mailHelper.setTo(reciver);
			mailHelper.setSubject(title);
			mailHelper.setText(content, true);
			
			mailSender.send(mail);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 로그인해서 업데이트하는 기능
	@Override
	public ServiceResult updateUser(Map<String, Object> param) {
		int cnt = 0;
		Map<String, Object> userMap = new HashMap<String, Object>();
		userMap.put("userId",(String) param.get("userId"));
		userMap.put("userType",(String) param.get("userType"));
		
		String userType = (String) param.get("userType");
		
		if(userType.equals("STU")) {	
			userMap.put("stuPhone",(String) param.get("phone"));
			userMap.put("stuEmail",(String) param.get("email"));
			userMap.put("stuPostcode",(String) param.get("postcode"));
			userMap.put("stuAddr1",(String) param.get("addr1"));
			userMap.put("stuAddr2",(String) param.get("addr2"));
			userMap.put("stuBank",(String) param.get("bank"));
			userMap.put("stuAccount",(String) param.get("account"));
			cnt = userMapper.updateUser(userMap);
		}
		
		if(userType.equals("PRO")) {	
			userMap.put("proPhone",(String) param.get("phone"));
			userMap.put("proEmail",(String) param.get("email"));
			userMap.put("proPostcode",(String) param.get("postcode"));
			userMap.put("proAddr1",(String) param.get("addr1"));
			userMap.put("proAddr2",(String) param.get("addr2"));
			userMap.put("proBank",(String) param.get("bank"));
			userMap.put("proAccount",(String) param.get("account"));
			cnt = userMapper.updateUser(userMap);
		}
		
		if(userType.equals("EMP")) {	
			userMap.put("empPhone",(String) param.get("phone"));
			userMap.put("empEmail",(String) param.get("email"));
			userMap.put("empPostcode",(String) param.get("postcode"));
			userMap.put("empAddr1",(String) param.get("addr1"));
			userMap.put("empAddr2",(String) param.get("addr2"));
			userMap.put("empBank",(String) param.get("bank"));
			userMap.put("empAccount",(String) param.get("account"));
			cnt = userMapper.updateUser(userMap);
			
		}
		ServiceResult result = null;
		
		if(cnt > 0) {
			result = ServiceResult.OK;
		} else {
			result = ServiceResult.FAILED;
		}
		return result;
	}

	@Override
	public ServiceResult insertUserType(Map<String, Object> param) {
		// 관리자가 인서트할 때 유저의 id,pw,type을 업데이트하는 기능
		int cnt = 0;
		Map<String, Object> userMap = new HashMap<String, Object>();
		userMap.put("userId",(String) param.get("userId"));
		userMap.put("userType",(String) param.get("userType"));
		userMap.put("password", (String) param.get("reg1"));
		
		
		
		int icnt = userMapper.insertUser(userMap);
		
		// 성공하면 타입을 나눠서 각 유저의 정보를 인서트하는 기능
		if(icnt > 0 ) {
	
			String userType = (String) param.get("userType");
			
			if(userType.equals("STU")) {	
				userMap.put("stuNameKo",(String) param.get("nameKo"));
				userMap.put("stuNameEn",(String) param.get("nameEn"));
				userMap.put("stuReg1",param.get("reg1"));
				userMap.put("stuReg2",param.get("reg2"));
				userMap.put("stuPhone",(String) param.get("phone"));
				userMap.put("stuEmail",(String) param.get("email"));
				userMap.put("stuNation",(String) param.get("nation"));
				userMap.put("stuGender",(String) param.get("gender"));
				userMap.put("stuPostcode",(String) param.get("postcode"));
				userMap.put("stuAddr1",(String) param.get("addr1"));
				userMap.put("stuAddr2",(String) param.get("addr2"));
				userMap.put("stuBank",(String) param.get("bank"));
				userMap.put("stuAccount",(String) param.get("account"));
				
				// 학생일 떄 학생 테이블 업데이트
				cnt = userMapper.insertUserType(userMap);

				// 학생일 때 학적 업데이트
				userMap.put("acaMajor", (String) param.get("major"));
				userMap.put("acaGrade", (String) param.get("varInput1"));
				userMap.put("acaSemester", (String) param.get("varInput2"));
				userMap.put("deptCode", (String) param.get("dept"));
				
				userMapper.insertAca(userMap);
			}
			
			if(userType.equals("PRO")) {
				
				userMap.put("deptCode",(String) param.get("dept"));
				userMap.put("proNameKo",(String) param.get("nameKo"));
				userMap.put("proNameEn",(String) param.get("nameEn"));
				userMap.put("proReg1",param.get("reg1"));
				userMap.put("proReg2",param.get("reg2"));
				userMap.put("proMajor", (String) param.get("major"));
				userMap.put("proPhone",(String) param.get("phone"));
				userMap.put("proEmail",(String) param.get("email"));
				userMap.put("proNation",(String) param.get("nation"));
				userMap.put("proGender",(String) param.get("gender"));
				userMap.put("proPostcode",(String) param.get("postcode"));
				userMap.put("proAddr1",(String) param.get("addr1"));
				userMap.put("proAddr2",(String) param.get("addr2"));
				userMap.put("proLabNum",(String) param.get("varInput1"));
				userMap.put("proLabTel",(String) param.get("varInput2"));
				userMap.put("proBank",(String) param.get("bank"));
				userMap.put("proAccount",(String) param.get("account"));
				
				// 교수일 때 교수 테이블 업데이트
				cnt = userMapper.insertUserType(userMap);
				
			}
			
			if(userType.equals("EMP")) {	
				
				userMap.put("empNameKo",(String) param.get("nameKo"));
				userMap.put("empNameEn",(String) param.get("nameEn"));
				userMap.put("empReg1",param.get("reg1"));
				userMap.put("empReg2",param.get("reg2"));
				userMap.put("empPhone",(String) param.get("phone"));
				userMap.put("empEmail",(String) param.get("email"));
				userMap.put("empNation",(String) param.get("nation"));
				userMap.put("empGender",(String) param.get("gender"));
				userMap.put("empPostcode",(String) param.get("postcode"));
				userMap.put("empAddr1",(String) param.get("addr1"));
				userMap.put("empAddr2",(String) param.get("addr2"));
				userMap.put("empBank",(String) param.get("bank"));
				userMap.put("deptCode", (String) param.get("dept"));
				userMap.put("empAccount",(String) param.get("account"));

				// 교직원일 때 교직원 업데이트
				cnt = userMapper.insertUserType(userMap);
				
			}
		}
		ServiceResult result = null;
		
		if(cnt > 0) {
			result = ServiceResult.OK;
		} else {
			result = ServiceResult.FAILED;
		}
		return result;
	}

	@Override
	public List<UserVO> selectAllUsers() {
		return userMapper.selectAllUsers();
	}

	@Override
	public List<StudentVO> selectAllStudents() {
		return userMapper.selectAllStudents();
	}

	@Override
	public List<ProfessorVO> selectAllProfessors() {
		return userMapper.selectAllProfessors();
	}

	@Override
	public List<EmployeeVO> selectAllEmployees() {
		return userMapper.selectAllEmployees();
	}

	@Override
	public List<AcademicVO> selectStuAcademics() {
		return userMapper.selectStuAcademics();
	}

	@Override
	public List<DepartmentVO> selectAllDeparts(String collCode) {
		return userMapper.selectAllDeparts(collCode);
	}

	@Override
	public List<StudentVO> selectStuSearch(Map<String, Object> dataMap) {
		return userMapper.selectStuSearch(dataMap);
	}

	@Override
	public int selectStuListCount(PaginationInfoVO<StudentVO> pagingVO) {
		return userMapper.selectStuListCount(pagingVO);
	}


	@Override
	public List<ProfessorVO> selectProSearch(Map<String, Object> dataMap) {
		return userMapper.selectProSearch(dataMap);
	}

	@Override
	public int selectProListCount(PaginationInfoVO<ProfessorVO> pagingVO) {
		return userMapper.selectProListCount(pagingVO);
	}

	@Override
	public int selectEmpListCount(PaginationInfoVO<EmployeeVO> pagingVO) {
		return userMapper.selectEmpListCount(pagingVO);
	}

	@Override
	public List<EmployeeVO> selectEmpSearch(Map<String, Object> dataMap) {
		return userMapper.selectEmpSearch(dataMap);
	}

	@Override
	public StudentVO selectStudent(String stuId) {
		return userMapper.selectStudent(stuId);
	}

	@Override
	public ProfessorVO selectProfessor(String proId) {
		return userMapper.selectProfessor(proId);
	}

	@Override
	public EmployeeVO selectEmployee(String empId) {
		return userMapper.selectEmployee(empId);
	}

	@Override
	public List<Map<String, Object>> getLectureList(String proId) {
		return userMapper.getLectureList(proId);
	}

	@Override
	public int updPassword(UserVO userVO) {
		return userMapper.updPassword(userVO);
	}

	@Override
	public UserVO userCheck2(UserVO userVO) {
		return userMapper.userCheck(userVO);
	}

	@Override
	public Map<String, Object> getMyCredits(String stuId) {
		return userMapper.getMyCredits(stuId);
	}

	@Override
	public List<SummaryCourseInfoVO> getSummInfo(String stuId) {
		return userMapper.getSummInfo(stuId);
	}

}
