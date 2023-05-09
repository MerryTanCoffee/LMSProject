package kr.or.ddit.score.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import kr.or.ddit.score.vo.ObjectionVO;
import kr.or.ddit.score.vo.ScoreVO;

public interface IScoreService {

	public void insert(ScoreVO score) throws Exception;
	//교수용
	public List<ScoreVO> list(Map<String,String> map) throws Exception;
	//관리자용??
	public List<ScoreVO> list() throws Exception;
	
	//학생용
	public List<ScoreVO> stuList(String stuId) throws Exception;

	public void delete(Map<String,String> map) throws Exception;

	public void update(ScoreVO score) throws Exception;

	public List<ScoreVO> read(String stuId, HttpSession session ) throws Exception;
	
	//셀렉트박스용
	public List<ScoreVO> selectList(String proId) throws Exception;
	
	////학생용 전선 전필 교선 교필 별 학점평균임...
	public List<ScoreVO> averageList(String stuId) throws Exception;
    
	//학생용 이의신청 모습 아예 상상이 안가네...
	public List<ObjectionVO> objectionList(String stuId) throws Exception;
	
	public int objectionInsert(ObjectionVO objectionVO) throws Exception;
	
	//학기 연도 선택용
	public List<ScoreVO> selectboxYearSeme() throws Exception;
	
	//이의신청 리스트 교수화면 
	public List<ObjectionVO> objProList(String proId) throws Exception;
	
	//교수용 이의신청 수정하기
	public int objectionUpdate(ObjectionVO object) throws Exception;
	
	//전필
	public List<ScoreVO> stuListJP(String stuId) throws Exception;
	//전선
	public List<ScoreVO> stuListJS(String stuId) throws Exception;
	//교필
	public List<ScoreVO> stuListGP(String stuId) throws Exception;
	//교선
	public List<ScoreVO> stuListGS(String stuId) throws Exception;
	
	public int objectionDelete(Map<String, String> map) throws Exception;
	//교수가 확정눌러주면 강의 평가 디폴트값 업데이트
	public int updateLectureEval(Map<String, Object> resultMap) throws Exception;
}
