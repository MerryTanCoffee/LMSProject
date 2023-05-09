package kr.or.ddit.mapper;

import java.util.List;
import java.util.Map;

import kr.or.ddit.score.vo.ScoreVO;
import kr.or.ddit.submit.vo.HomeworkVO;
import kr.or.ddit.submit.vo.SubmitVO;
import kr.or.ddit.user.vo.StudentVO;

public interface SubmitMapper {

	// 과제 목록
	public List<HomeworkVO> homeworkList(String lecCode);
	
	// 교수가 과제 제출
	public int insertHomework(HomeworkVO homeworkVO);

	// 학생이 과제 제출
	public int insertSubmit(SubmitVO submit);

	// 강의를 듣는 학생
	public List<StudentVO> lecStuList(String lecCode);

	// 강의 그 주차 숙제의 정보
	public HomeworkVO homeworkSelectOne(Map<String, Object> paramMap);

	// 학생들이 제출한 파일 리스트
	public List<SubmitVO> submitFile(Map<String, String> paramMap);

	// 점수 주기
	public int submitScore(ScoreVO scoreVO);

	// submit 테이블에 점수 주기
	public int submitScoreSub(SubmitVO submitVO);

	// 그 과제 코드의 강의의 갯수
	public int countHomework(String lecCode);

	// 학생이 제출한 그 강의코드의 제출한 과제들의 점수 합
	public int totalSubmit(Map<String, String> paramMap);


}
