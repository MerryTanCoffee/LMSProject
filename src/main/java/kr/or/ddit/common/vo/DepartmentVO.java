package kr.or.ddit.common.vo;

import lombok.Data;

@Data
public class DepartmentVO {
	private String deptCode;		// 학과코드
	private String collCode;		// 단과대 코드
	private String hallCode;		// 건물 코드
	private String deptName;		// 학과명
	private String deptTel;			// 학과 연락처
	private String deptTuition;		// 등록금액
	private String deptRoom;		// 학과 사무실 호수
	private String collName;		// 단과 이름
}
