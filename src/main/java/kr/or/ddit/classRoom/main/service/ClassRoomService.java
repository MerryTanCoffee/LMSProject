package kr.or.ddit.classRoom.main.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.common.vo.CurrentInfoVO;
import kr.or.ddit.user.vo.UserVO;

public interface ClassRoomService {

	List<Map<String, Object>> getClassRoomList(UserVO userInfo);

	List<Map<String, Object>> getMyClassYearList(UserVO userInfo);

	List<Map<String, Object>> getSearchList(Map<String, Object> searchMap);

	String selectSubName(String lecCode);

	CurrentInfoVO getCurrentInfo();

}
