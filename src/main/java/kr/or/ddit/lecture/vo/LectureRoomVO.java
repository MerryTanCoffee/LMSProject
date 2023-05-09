package kr.or.ddit.lecture.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LectureRoomVO {
	private String hallCode;	// 건물코드
	private String hallName;	// 건물명
	private String lrCode;		// 강의실 코드
	private String lrNum;		// 강의실 호수
	private String deptCode;	// 학과코드
	private String deptName;	// 학과명
	private String deptTel;		// 학과연락처
	private String deptRoom;	// 학과사무실호수
	private String collCode;	// 단과대코드
	private String collName;	// 단과대명
}
