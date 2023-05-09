package kr.or.ddit.exam.vo;

import java.util.List;

import lombok.Data;

@Data
public class ExamListVO {
	private int exNum;
	private String examGubun;
	private String lecCode;
	private String exContent;
	private String exSolution;
	private List<ExamSelectVO> examSelectList;	// 보기여러개
}
