package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.calendar.vo.CalendarVO;

public interface CalMapper {

	public List<CalendarVO> list(String studyCode) throws Exception;

	public void insert(CalendarVO calendar) throws Exception;

	public void delete(CalendarVO calendar) throws Exception;

	public void update(CalendarVO calendar) throws Exception;

	
}
