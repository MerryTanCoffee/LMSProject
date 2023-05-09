package kr.or.ddit.scholarship.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ScholarshipInfoVO {
	private String siCode;		// 장학금 코드
	private String siName;		// 장학금 이름
	private int siGrade;		// 장학등급 => 100%/75%/50%/30%
	private String siGubun;		// 장학구분 => 교내/교외
}
