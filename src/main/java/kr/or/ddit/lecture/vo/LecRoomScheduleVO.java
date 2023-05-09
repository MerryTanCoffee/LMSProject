package kr.or.ddit.lecture.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LecRoomScheduleVO {
	private String lecCode;		// 강의계획코드
	private String lrCode;		// 강의실 코드
	private String lrNum;		// 강의실 호수
	private String lrsStart;	// 강의시작시간
	private String lrsEnd;		// 강의종료시간
	private String weekCode;	// 요일코드
	private String weekName;	// 요일명
	private String hallCode;	// 건물코드
	private String hallName;	// 건물명
	private String lecDivide;	// 분반
	private String subName;		// 교과목명
	private String proNameKo;	// 담당교수명
	
}
