package kr.or.ddit.chat.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.chat.vo.ChatVO;
import kr.or.ddit.profile.vo.ProfileVO;
import kr.or.ddit.study.vo.StudyVO;
import kr.or.ddit.user.vo.StudentVO;

public interface IChatService {

	public List<ChatVO> chatDetail(Map<String, Object> param);

	public void insertChat(Map<String, String> param);

	public List<StudyVO> selectMyStudy(String userId);

	public List<StudentVO> chatMember(Map<String, String> param);


}
