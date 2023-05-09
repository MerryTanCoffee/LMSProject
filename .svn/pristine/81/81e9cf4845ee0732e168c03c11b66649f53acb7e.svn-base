package kr.or.ddit.msg.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.MsgMapper;
import kr.or.ddit.msg.service.IMsgService;
import kr.or.ddit.msg.vo.MsgVO;

@Service
public class MsgServiceImpl implements IMsgService {

   @Autowired
   public MsgMapper msgMapper;

   @Override
   public void insertMsg(MsgVO msgVO) {
      msgMapper.insertMsg(msgVO);
   }

   @Override
   public List<MsgVO> msgList(String userId) {
      return msgMapper.listMsg(userId);
   }

   @Override
   public List<MsgVO> listSendMsg(String userId) {
      return msgMapper.listSendMsg(userId);
   }

   @Override
   public MsgVO msgDetail(int msgNo) {
      return msgMapper.msgDetail(msgNo);
   }

   @Override
   public List<MsgVO> studyReceiveMsgList(MsgVO msgVO) {
      return msgMapper.studyReceiveMsgList(msgVO);
   }
   
   @Override
   public List<MsgVO> studySendMsgList(String userId) {
      return msgMapper.studySendMsgList(userId);
   }

	@Override
	public int deleteMsg(int msgNo) {
		return msgMapper.deleteMsg(msgNo);
	}
   


}