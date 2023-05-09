package kr.or.ddit.score.vo;

import lombok.Data;

@Data
public class ObjectionVO {
	private int objNo; //시퀸스
	private String lecCode; //강의계획코드
	private String stuId; //학번
	private String objReason; //이의신청사유
	private String objDate; //이의 신청 날짜
	private String objContent; // 이의 결과 내용
	private String objStatus; // 이의신청 승인여부
	private String objPreCredit; //이전 성적
	private String objReCredit; //정정 성적
	
	private String subName; //교과목명
	private String proNameKo; //교수꼬레아네임
	private String stuNameKo; //학생한국이름
}
