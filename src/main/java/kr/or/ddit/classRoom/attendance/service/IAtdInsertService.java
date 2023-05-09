package kr.or.ddit.classRoom.attendance.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.classRoom.attendance.vo.AtdVO;
import kr.or.ddit.common.ServiceResult;

public interface IAtdInsertService {

	List<AtdVO> selectAtdList(String letCode);

	ServiceResult updateAtd(Map<String, Object> atdMap);
	
	String selectSubName(String lecCode);

	AtdVO selectOneAtd(AtdVO atdVO);

	ServiceResult scoreUpdate(Map<String, Object> atdMap);

}
