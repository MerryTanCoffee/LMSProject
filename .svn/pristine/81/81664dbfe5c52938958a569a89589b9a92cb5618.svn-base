package kr.or.ddit.exam.vo;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data 
public class ExamVO {

	private String examGubun; 	// 시험구분(중간-M,기말 -Y)
	private String lecCode;		// 강의계획코드
	private Date examDate;	// 시험일자
	
	private String subCode; 
	private int lecOpenYear; 
	private int lecOpenSemester; 
	private int lecDivide;
	private String lecLanguage;
	private int lecGrade;
	private String subSort;
	private String subName;
	private int subApplicant;
	
	// 문제는 여러개, 1개의 문제당 보기도 여러개
	private List<ExamListVO> examList;		// 문제 여러개
	
//	private SubjectVO subjectVO;
//	private SubjectOpenVO subjectOpenVO;
//	private LectureVO lectureVO;
}
