package kr.or.ddit.exam.vo;

import lombok.Data;

@Data
public class ExamQuestionsVO {

	private int exNum;			// 문제 번호
	private String examGubun;	// 중간 or 기말
	private String lecCode;		// 강의코드
	private String exContent;	// 문제 질문
	private String exSolution;	// 문제 답(보기번호)
	
	// 보기에 대한  vo가 따로 있어서 아래에는 리스트로 담겨야함
	// 인서트할때는 서비스로직에서 문제 정보 인서트, 보기정보 인서트 따로
	private int exsNum;			// 보기번호
	private String exsContent;	// 보기내용
}
