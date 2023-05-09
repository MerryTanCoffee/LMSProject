package kr.or.ddit.academic.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.academic.vo.AcademicChangeVO;
import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.user.vo.StudentVO;


public interface IAcademicService {

	public void insertApplyOff(Map<String, Object> param);

	public List<AcademicChangeVO> getAcChInfo(String userId);

	public List<AcademicChangeVO> selectAppStuList();

	public StudentVO selectAppStuInfo(String stuId);

	public List<AcademicChangeVO> selectAcceptList(AcademicChangeVO acChVO);

	public List<AcademicChangeVO> rejectOffList(AcademicChangeVO acChVO);

	public List<AcademicChangeVO> waitOffList(AcademicChangeVO acChVO);

	public ServiceResult updateOffStatus(AcademicChangeVO acChVO);

	public void updateAcaStatus(Map<String,String> paramMap);

}
