package kr.or.ddit.mapper;

import java.util.List;
import java.util.Map;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.study.vo.StudyVO;

public interface StudyMapper {

	public List<StudyVO> selectMyStudy(String userId);

	public List<StudyVO> selectOneStudy(String studyCode);

	public List<StudyVO> standByStudy(String userId);
	
	public String selectStudyName(String studyCode);

	public StudyVO selectStudyLeader(StudyVO studyVO );

	public int insertStuMem(StudyVO studyVO);

	public void deleteMsg(StudyVO studyVO);

	public List<Map<String, Object>> getStuTimeTbl(String stuId);
}
