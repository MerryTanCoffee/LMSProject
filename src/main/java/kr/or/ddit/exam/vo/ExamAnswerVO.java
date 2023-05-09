package kr.or.ddit.exam.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ExamAnswerVO {
	
	private int exNum; 
	private String examGubun; 
	private String lecCode; 
	private String stuId; 
	private String exaAnswer; 
	private String exaCheck;
	private Date exaTakeDate;	// 응시날짜
	
	private String exContent;
	private String exSolution;
	
	// 학생이 맞춘 총 점수
	private int correctCount;
	
	
	private Date examDate;
	private int lecOpenYear;
	private int lecOpenSemester;
	private String lecDivide;
	private int lecGrade;
	private String lecLanguage;
	private String subName;
	
	
	
}
