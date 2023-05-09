package kr.or.ddit.course.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.common.vo.CurrentInfoVO;
import kr.or.ddit.common.vo.DepartmentVO;
import kr.or.ddit.common.vo.SummaryCourseInfoVO;
import kr.or.ddit.course.vo.CourseOpenVO;
import kr.or.ddit.course.vo.CourseVO;

public interface ICourseService {

	public List<CourseOpenVO> openList();

	public List<DepartmentVO> deptInfoList();

	public void courseApply(Map<String, Object> courseMap);

	public List<CourseVO> basketList(String stuId);

	public ServiceResult basketInsert(Map<String, Object> courseMap);

	public void courseCancel(Map<String, Object> courseMap);

	public List<CourseOpenVO> courseSearch(Map<String, Object> searchData);

	public List<CourseOpenVO> getCourseOpenList(String deptCode);

	public Map<String, Object> getStuInfo(String userId);

	public List<Map<String, Object>> getCourseHistory(String userId);

	public List<Map<String, Object>> getHistoryDetailList(Map<String, Object> param);

	public Map<String, Object> getTotCredit(String stuId);

	public List<SummaryCourseInfoVO> getMyCourseList(String stuId);

	public CurrentInfoVO getCurrentInfo();

	public List<Map<String, Object>> getMyTimeTable(String stuId);

}
