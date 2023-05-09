package kr.or.ddit.tuition.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.TuitionMapper;
import kr.or.ddit.tuition.service.ITuitionService;
import kr.or.ddit.tuition.vo.TuitionVO;

@Service
public class TuitionServiceImpl implements ITuitionService {
	
	@Autowired
	private TuitionMapper tuitionMapper;
	
	@Override
	public List<TuitionVO> tuitionList(String userId) {
		return tuitionMapper.tuitionList(userId);
	}

	@Override
	public TuitionVO tuiDetail(int tlNo) {
		return tuitionMapper.tuiDetail(tlNo);
	}

	@Override
	public TuitionVO tuiBillDetail(String userId) {
		return tuitionMapper.tuiBillDetail(userId);
	}

}
