package kr.or.ddit.classRoom.notice.vo;


import lombok.Data;

@Data
public class NoticeVO {
	private String lecCode; //강의계획코드
	private String subCode;// 교과목코드
	private String subName;// 교과목이름
	private int lecNoticeNo;//강의공지사항번호
	private String lnTitle; //강의공지사항 제목
	private String lnContent; //강의공지사항 내용
	private int lnHit; //강의공지사항 조회수
	private String lnRegDate; //강의공지사항작성일
	private String userId;
	private String proNameKo;
	private int rnum;
	
}
