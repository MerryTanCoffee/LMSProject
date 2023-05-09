package kr.or.ddit.lecture.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.common.vo.CurrentInfoVO;
import kr.or.ddit.lecture.service.ILectureService;
import kr.or.ddit.lecture.vo.LecRoomScheduleVO;
import kr.or.ddit.lecture.vo.LectureIndexVO;
import kr.or.ddit.lecture.vo.LectureVO;
import kr.or.ddit.mapper.LectureMapper;
import kr.or.ddit.subject.vo.SubjectVO;

@Service
public class LectureServiceImpl implements ILectureService {

	@Autowired
	private LectureMapper lectureMapper;

	@Override
	public List<SubjectVO> subjectList(String deptCode) {
		return lectureMapper.subjectList(deptCode);
	}

	@Override
	public ServiceResult lecPlanRegister(LectureVO lecturePlan) {
		ServiceResult result = null;
		String lecCode = RandomStringUtils.randomAlphanumeric(8);
		lecturePlan.setLecCode(lecCode);
		int status = lectureMapper.lecPlanRegister(lecturePlan);

		if (status > 0) {
			for (LectureIndexVO idx : lecturePlan.getLecIdxList()) {
				idx.setLecCode(lecCode);
				lectureMapper.lecIdxRegister(idx);
			}
			result = ServiceResult.OK;
		} else {
			result = ServiceResult.FAILED;
		}
		return result;
	}

	@Override
	public List<LectureVO> applicationList(String userId) {
		return lectureMapper.applicationList(userId);
	}

	@Override
	public List<LectureVO> empLecPlanList() {
		return lectureMapper.empLecPlanList();
	}

	@Override
	public void lecPlanRefuse(Map<String, String> refuseMap) {
		lectureMapper.lecPlanRefuse(refuseMap);
	}

	@Override
	public List<LecRoomScheduleVO> roomSchedule(String lrCode) {
		return lectureMapper.roomSchedule(lrCode);
	}

	@Override
	public ServiceResult lecPlanOk(Map<String, Object> lecOkMap) {
		ServiceResult result = null;
		int status = lectureMapper.lecPlanOk(lecOkMap);
		
		if(status > 0) {
			int cnt = lectureMapper.lecRoomScheduleInsert(lecOkMap);
			int cnt2 = lectureMapper.classOpen(lecOkMap);
			if(cnt > 0 && cnt2 > 0) {
				result = ServiceResult.OK;
			}
		} else {
			result = ServiceResult.FAILED;
		}
		
		return result;
	}

	@Override
	public CurrentInfoVO getCurrentInfo() {
		return lectureMapper.getCurrentInfo();
	}

}
