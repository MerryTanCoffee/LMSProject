package kr.or.ddit.subject.vo;

import lombok.Data;

@Data
public class SubjectVO {
	private String subCode;			// 교과목코드
	private String deptCode;		// 학과코드
	private String deptName;		// 학과명
	private String subSort;			// 교과목구분
	private String subType;			// 이수형태
	private String subName;			// 교과목명
	private int subCredit;			// 학점
	private int subLecTime;			// 강의시간
	private int subPracTime;		// 실습시간
	private String subOutlineKo;	// 교과목개요(한글)
	private String subOutlineEn;	// 교과목개요(영어)
	private String hallCode;		// 건물코드
	private String hallName;		// 건물명
}
