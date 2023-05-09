package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.msg.vo.MsgVO;

public interface MsgMapper {
   public int insertMsg(MsgVO msgVO);
   public List<MsgVO> listMsg(String userId);
   public List<MsgVO> listSendMsg(String userId);
   public MsgVO msgDetail(int msgNo);
   public List<MsgVO> studyReceiveMsgList(MsgVO msgVO);
   public List<MsgVO> studySendMsgList(String userId);
   public int deleteMsg(int msgNo);
}