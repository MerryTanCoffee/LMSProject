package kr.or.ddit.study.service.impl;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.mapper.StudyMapper;
import kr.or.ddit.study.service.IStudyService;
import kr.or.ddit.study.vo.StudyVO;

@Service
public class StudyServiceImpl implements IStudyService {

	@Inject
	private StudyMapper mapper;

	@Override
	public List<StudyVO> selectMyStudy(String userId) {
		return mapper.selectMyStudy(userId);
	}

	@Override
	public List<StudyVO> selectOneStudy(String studyCode) {
		return mapper.selectOneStudy(studyCode);
	}

	@Override
	public List<StudyVO> standByStudy(String userId) {
		return mapper.standByStudy(userId);
	}

	@Override
	public String selectStudyName(String studyCode) {
		return mapper.selectStudyName(studyCode);
	}

	@Override
	public StudyVO selectStudyLeader(StudyVO studyVO) {
		return mapper.selectStudyLeader(studyVO);
	}

	@Override
	public ServiceResult insertStuMem(StudyVO studyVO) {
		ServiceResult result = null;
		int cnt = mapper.insertStuMem(studyVO);
		
		if (cnt > 0) {
			mapper.deleteMsg(studyVO);
			result = ServiceResult.OK;
		} else {
			result = ServiceResult.FAILED;
		}
		return result;
	}

	@Override
	public List<Map<String, Object>> getStuTimeTbl(String stuId) {
		return mapper.getStuTimeTbl(stuId);
	}

}
