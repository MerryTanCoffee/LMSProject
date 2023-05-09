package kr.or.ddit.study.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.study.vo.StudyVO;

public interface IStudyService {

	public List<StudyVO> selectMyStudy(String userId);

	public List<StudyVO> selectOneStudy(String studyCode);

	public List<StudyVO> standByStudy(String userId);

	public String selectStudyName(String studyCode);

	public StudyVO selectStudyLeader(StudyVO studyVO);

	public ServiceResult insertStuMem(StudyVO studyVO);

	public List<Map<String, Object>> getStuTimeTbl(String stuId);



}
