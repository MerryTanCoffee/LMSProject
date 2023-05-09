package kr.or.ddit.reference.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.ReferenceMapper;
import kr.or.ddit.reference.service.IReferenceService;
import kr.or.ddit.reference.vo.ReferenceVO;

@Service
public class ReferenceServiceImpl implements IReferenceService {

	@Autowired
	private ReferenceMapper referenceMapper;
	
	@Override
	public void insertReference(ReferenceVO referenceVO) {
		referenceMapper.insertReference(referenceVO);
	}
	
	
	@Override
	public List<ReferenceVO> referenceList(String lecCode) {
		return referenceMapper.referenceList(lecCode) ;
	}

	@Override
	public List<ReferenceVO> referenceFile(String lecCode) {
		return referenceMapper.referenceFile(lecCode);
	}

}
