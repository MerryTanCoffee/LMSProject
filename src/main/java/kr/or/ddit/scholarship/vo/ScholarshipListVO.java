package kr.or.ddit.scholarship.vo;


import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ScholarshipListVO {
	private int slNo;			// 장학금 번호
	private String stuId;		// 학번
	private String siCode;		// 장학금 코드
	private int slYear;			// 해당연도
	private int slSchlr;		// 장학금액
	private int slSemester;		// 신청학기
	private Date slAplctDate;	// 신청일자
	private Date slConfirmDate;	// 확정일자
	private String slStatus;	// 신청상태
	private String slComment;	// 반려사유
	private String siName;		// 장학금 이름
	private int siGrade;		// 장학등급 => 100%/75%/50%/30%
	private String siGubun;		// 장학구분 => 교내/교외
	private String stuNameKo;   // 이름
}
