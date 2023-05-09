package kr.or.ddit.msg.service;


import java.util.List;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.msg.vo.MsgVO;

public interface IMsgService {
   public void insertMsg(MsgVO msgVO);
   public List<MsgVO> msgList(String userId);
   public List<MsgVO> listSendMsg(String userId);
   public MsgVO msgDetail(int msgNo);
   public List<MsgVO> studyReceiveMsgList(MsgVO msgVO);
   public List<MsgVO> studySendMsgList(String userId);
   public int deleteMsg(int msgNo);

}