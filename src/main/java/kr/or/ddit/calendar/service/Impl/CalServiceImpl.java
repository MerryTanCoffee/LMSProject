package kr.or.ddit.calendar.service.Impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.calendar.service.ICalService;
import kr.or.ddit.calendar.vo.CalendarVO;
import kr.or.ddit.mapper.CalMapper;

@Service
public class CalServiceImpl implements ICalService {
	
	@Inject
	private CalMapper mapper;
	
	@Override
	public List<CalendarVO> list(String studyCode) throws Exception{
		return mapper.list(studyCode);
	}

	@Override
	public void insert(CalendarVO calendar) throws Exception{
		mapper.insert(calendar);
	}

	@Override
	public void delete(CalendarVO calendar) throws Exception {
		mapper.delete(calendar);
	}

	@Override
	public void update(CalendarVO calendar) throws Exception {
		mapper.update(calendar);
	}

}
