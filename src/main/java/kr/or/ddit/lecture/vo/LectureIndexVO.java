package kr.or.ddit.lecture.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LectureIndexVO {
	private String liWeek;		// 강의주차	
	private String lecCode;		// 강의계획코드
	private String liContent;	// 수업내용
	private String liNote;		// 비고
	
}
