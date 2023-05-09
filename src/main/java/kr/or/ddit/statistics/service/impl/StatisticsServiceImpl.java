package kr.or.ddit.statistics.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.StatisticsMapper;
import kr.or.ddit.statistics.service.IStatisticsService;

@Service
public class StatisticsServiceImpl implements IStatisticsService {
	
	@Autowired
	private StatisticsMapper mapper;
	
	@Override
	public Map<String, Object> getUserOfNum() {
		return mapper.getUserOfNum();
	}

	@Override
	public Map<String, Object> getStuStatusOfNum() {
		return mapper.getStuStatusOfNum();
	}

	@Override
	public Map<String, Object> getCollOfStuNum() {
		return mapper.getCollOfStuNum();
	}

}
