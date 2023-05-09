package kr.or.ddit.mapper;

import java.util.List;
import java.util.Map;

import kr.or.ddit.classRoom.attendance.vo.AtdVO;

public interface AttendanceMapper {

	public List<AtdVO> selectAtdList(String letCode);

	public int updateAtd(Map<String, Object> atdMap);

	public String selectSubName(String lecCode);

	public AtdVO selectOneAtd(AtdVO atdVO);

	public int scoreUpdate(Map<String, Object> atdMap);

}
