package kr.or.ddit.academic.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.academic.service.IAcademicService;
import kr.or.ddit.academic.vo.AcademicChangeVO;
import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.mapper.AcademicMapper;
import kr.or.ddit.user.vo.StudentVO;

@Service
public class AcademicServiceImpl implements IAcademicService {

	@Autowired
	private AcademicMapper acMapper;
	
	@Override
	public void insertApplyOff(Map<String, Object> param) {
		acMapper.insertApplyOff(param);
	}

	@Override
	public List<AcademicChangeVO> getAcChInfo(String userId) {
		return acMapper.getAcChInfo(userId);
	}

	@Override
	public List<AcademicChangeVO> selectAppStuList() {
		return acMapper.selectAppStuList();
	}

	@Override
	public StudentVO selectAppStuInfo(String stuId) {
		return acMapper.selectAppStuInfo(stuId);
	}

	@Override
	public List<AcademicChangeVO> selectAcceptList(AcademicChangeVO acChVO) {
		return acMapper.selectAcceptList(acChVO);
	}

	@Override
	public List<AcademicChangeVO> rejectOffList(AcademicChangeVO acChVO) {
		return acMapper.rejectOffList(acChVO);
	}

	@Override
	public List<AcademicChangeVO> waitOffList(AcademicChangeVO acChVO) {
		return acMapper.waitOffList(acChVO);
	}

	@Override
	public ServiceResult updateOffStatus(AcademicChangeVO acChVO) {
		int cnt =0;
		ServiceResult result = null;
		cnt = acMapper.updateOffStatus(acChVO);
		if (cnt > 0) {
			result = ServiceResult.OK;
		} else {
			result = ServiceResult.FAILED;
		}
		return result;
	}

	@Override
	public void updateAcaStatus(Map<String,String> paramMap) {
			acMapper.updateAcaStatus(paramMap);
		
	}
}
