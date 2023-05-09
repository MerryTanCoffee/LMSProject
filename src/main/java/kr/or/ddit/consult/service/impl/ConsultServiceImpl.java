package kr.or.ddit.consult.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.consult.service.IConsultService;
import kr.or.ddit.consult.vo.ConsultVO;
import kr.or.ddit.mapper.ConsultMapper;
import kr.or.ddit.user.vo.ProfessorVO;

@Service
public class ConsultServiceImpl implements IConsultService {
	
	@Autowired
	private ConsultMapper mapper;

	@Override
	public List<ProfessorVO> getProInfoList(String deptCode) {
		return mapper.getProInfoList(deptCode);
	}

	@Override
	public List<ConsultVO> registerList(ConsultVO cv) {
		return mapper.registerList(cv);
	}

	@Override
	public void cancelConsult(int consNum) {
		mapper.cancelConsult(consNum);
	}

	@Override
	public List<Map<String, Object>> getProTimeTbl(String proId) {
		return mapper.getProTimeTbl(proId);
	}

	@Override
	public List<Map<String, Object>> getProConsTimeTbl(String proId) {
		return mapper.getProConsTimeTbl(proId);
	}

	@Override
	public ServiceResult consultInsert(Map<String, Object> consultMap) {
		ServiceResult result = null;
		int cnt = mapper.consultInsert(consultMap);
		
		if(cnt > 0) {
			result = ServiceResult.OK;
		} else {
			result = ServiceResult.FAILED;
		}
		return result;
	}

	// 교수가 보는 학생 신청 리스트
	@Override
	public List<ConsultVO> consultAppListW(ConsultVO cv) {
		return mapper.consultAppListW(cv);
	}

	@Override
	public List<ConsultVO> consultAppListY(ConsultVO cv) {
		return mapper.consultAppListY(cv);
	}

	@Override
	public List<ConsultVO> consultAppListN(ConsultVO cv) {
		return mapper.consultAppListN(cv);
	}

	@Override
	public void updateStatus(ConsultVO cv) {
		mapper.updateStatus(cv);
	}

	
}
