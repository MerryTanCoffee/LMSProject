package kr.or.ddit.consult.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.consult.vo.ConsultVO;
import kr.or.ddit.user.vo.ProfessorVO;

public interface IConsultService {

	public List<ProfessorVO> getProInfoList(String deptCode);

	public List<ConsultVO> registerList(ConsultVO cv);

	public void cancelConsult(int consNum);

	public List<Map<String, Object>> getProTimeTbl(String proId);

	public List<Map<String, Object>> getProConsTimeTbl(String proId);

	public ServiceResult consultInsert(Map<String, Object> consultMap);

	// 교수가 학생 신청 내역 리스트
	public List<ConsultVO> consultAppListW(ConsultVO cv);

	public List<ConsultVO> consultAppListY(ConsultVO cv);

	public List<ConsultVO> consultAppListN(ConsultVO cv);

	public void updateStatus(ConsultVO cv);


}
