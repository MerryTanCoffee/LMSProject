package kr.or.ddit.chat.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.chat.service.IChatService;
import kr.or.ddit.chat.vo.ChatVO;
import kr.or.ddit.mapper.ChatMapper;
import kr.or.ddit.study.vo.StudyVO;
import kr.or.ddit.user.vo.StudentVO;

@Service
public class ChatServiceImpl implements IChatService{

	@Autowired
	private ChatMapper chatMapper;
	
	@Override
	public List<ChatVO> chatDetail(Map<String,Object> paramMap) {
		return chatMapper.chatDetail(paramMap);
	}

	@Override
	public void insertChat(Map<String, String> param) {
		chatMapper.insertChat(param);
		
	}

	@Override
	public List<StudyVO> selectMyStudy(String userId) {
		return chatMapper.selectMyStudy(userId);
	}

	@Override
	public List<StudentVO> chatMember(Map<String, String> param) {
		return chatMapper.chatMember(param);
	}

}
