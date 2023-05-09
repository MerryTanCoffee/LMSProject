package kr.or.ddit.msg.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.msg.service.IMsgService;
import kr.or.ddit.msg.vo.MsgVO;
import kr.or.ddit.user.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/msg")
public class SendMsgController {
   
   @Autowired
   private IMsgService msgService;
   
   @GetMapping("/msgList")
   public String msgForm(MsgVO msgVO, HttpSession session, Model model) {
      // 받은쪽지함 리스트
      log.info("msgList()");
      UserVO userInfo = (UserVO) session.getAttribute("userInfo");
      String userId = userInfo.getUserId();
      
      List<MsgVO> msgList = msgService.msgList(userId);
      List<MsgVO> msgSendList = msgService.listSendMsg(userId);
      
      model.addAttribute("msgList", msgList);
      model.addAttribute("msgSendList", msgSendList);
      
      return "msg/msgList";
   }
   
   @GetMapping("/msgSend")
   public String msgSendForm(
         @RequestParam(required = false) String msgReceiver,
         Model model
         ) {
      if(msgReceiver != null) {
         model.addAttribute("msgReceiver", msgReceiver);
      }
      
      return "msg/msgSend";
   }

   @ResponseBody
   @RequestMapping(value="/msgSend", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
   public Map<String, String> msgSend(MsgVO msgVO) {
      log.info("쪽지 체킁: "+ msgVO);
      
      msgService.insertMsg(msgVO);
      
      Map<String, String> map = new HashMap<String, String>();
      map.put("result","ok");
      return map;
   }
   
   @GetMapping("/msgDetail")
   public String msgDetail(int msgNo, Model model) {
      log.info("msgDetail()");
      MsgVO msgVO = msgService.msgDetail(msgNo);
      model.addAttribute("msgVO", msgVO);
      return "msg/msgDetail";
   }
   
   @ResponseBody
   @PostMapping(value = "/msgDelete")
   public String deleteMsg(@RequestBody List<Integer> msgNo) {
	   
	   int result= 0;
	   for (Integer sunInt : msgNo) {
		      result += msgService.deleteMsg(sunInt);		
	   }
      
      if (result == msgNo.size()) {
         return "success";
      } else {
         return "fail";
      }
      
   }
   
   
}