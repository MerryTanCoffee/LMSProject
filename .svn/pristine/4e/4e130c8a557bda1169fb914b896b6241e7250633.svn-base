package kr.or.ddit.user.vo;

import java.util.List;

import kr.or.ddit.common.vo.ExcelColumn;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserVO {
	@ExcelColumn(headerName = "아이디")
	private String userId;
	@ExcelColumn(headerName = "비밀번호")
	private String password;
	@ExcelColumn(headerName = "활성")
	private String enabled;
	@ExcelColumn(headerName = "타입")
	private String userType;
	

	
	private StudentVO studentVO;
	private ProfessorVO professorVO;
	private EmployeeVO employeeVO;
	private List<UserAuth> authList;	// 권한 목록
	
	private int profileNo;
}
