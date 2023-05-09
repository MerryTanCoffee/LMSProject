package kr.or.ddit.user.vo;

import kr.or.ddit.common.vo.ExcelColumn;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProfessorVO {
	@ExcelColumn(headerName = "아이디")
	private String proId;
	@ExcelColumn(headerName = "부서코드")
	private String deptCode;	// 학과 코드
	@ExcelColumn(headerName = "한글성명")
	private String proNameKo;
	@ExcelColumn(headerName = "영문성명")
	private String proNameEn;
	@ExcelColumn(headerName = "주민번호앞")
	private String proReg1;
	@ExcelColumn(headerName = "주민번호뒷")
	private String proReg2;
	@ExcelColumn(headerName = "전공")
	private String proMajor;
	@ExcelColumn(headerName = "이메일")
	private String proEmail;
	@ExcelColumn(headerName = "전화")
	private String proPhone;
	@ExcelColumn(headerName = "국가")
	private String proNation;
	@ExcelColumn(headerName = "성별")
	private String proGender;
	@ExcelColumn(headerName = "우편번호")
	private String proPostcode;
	@ExcelColumn(headerName = "주소1")
	private String proAddr1;
	@ExcelColumn(headerName = "주소2")
	private String proAddr2;
	@ExcelColumn(headerName = "연구실호수")
	private String proLabNum;	// 연구실 호수
	@ExcelColumn(headerName = "연구실연락처")
	private String proLabTel;	// 연구실 연락처
	@ExcelColumn(headerName = "은행")
	private String proBank;
	@ExcelColumn(headerName = "계좌")
	private String proAccount;
	
	private int profileNo;
	private String collName;
	private String collCode;
}
