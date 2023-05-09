package kr.or.ddit.lecture.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.common.vo.CurrentInfoVO;
import kr.or.ddit.lecture.vo.LecRoomScheduleVO;
import kr.or.ddit.lecture.vo.LectureVO;
import kr.or.ddit.subject.vo.SubjectVO;

public interface ILectureService {

	public List<SubjectVO> subjectList(String deptCode);

	public ServiceResult lecPlanRegister(LectureVO lecturePlan);

	public List<LectureVO> applicationList(String userId);

	public List<LectureVO> empLecPlanList();

	public void lecPlanRefuse(Map<String, String> refuseMap);

	public List<LecRoomScheduleVO> roomSchedule(String lrCode);

	public ServiceResult lecPlanOk(Map<String, Object> lecOkMap);

	public CurrentInfoVO getCurrentInfo();

}
