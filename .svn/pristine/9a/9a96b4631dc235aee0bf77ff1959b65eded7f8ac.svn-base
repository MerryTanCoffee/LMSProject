package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.schedule.vo.ScheduleVO;

public interface ScheduleMapper {

	public List<ScheduleVO> list() throws Exception;

	public void insert(ScheduleVO schedule) throws Exception;

	public void delete(ScheduleVO schedule) throws Exception;

	public void update(ScheduleVO schedule) throws Exception;

	// 미니달력으로 학사일정 표현
	public List<ScheduleVO> miniSchedule(String datetime);

	// 미니달력 - 해당 월의 학사일정 
	public List<ScheduleVO> miniScheduleMonth(String usSdate);

}
