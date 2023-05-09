package kr.or.ddit.mapper;

import java.util.List;
import java.util.Map;

import kr.or.ddit.score.vo.ObjectionVO;

public interface ObjectionMapper {
	//학생용 이의신청 모습 아예 상상이 안가네...
	public List<ObjectionVO> objectionList(String stuId) throws Exception;
	
	//...insert 비동기 처리???
//	public void uploadObjection(String stuId) throws Exception;
	
	public int objectionInsert(ObjectionVO objectionVO) throws Exception;
	
	//교수화면 이의신청리스트
	public List<ObjectionVO> objProList(String proId) throws Exception;

	public int objectionUpdate(ObjectionVO object) throws Exception;

	//학생에서의 이의신청삭제
	public int objectionDelete(Map<String, String> map) throws Exception;
	
	//종합점수 업데이트
//	<update id="oveUpdate" parameterType="objectionVO">
	public int oveUpdate(ObjectionVO object);
}
