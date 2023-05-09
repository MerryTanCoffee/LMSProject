package kr.or.ddit.user.controller;



import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.user.service.IUserService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/user")
public class UserInsertController {

   @Autowired
   private IUserService userService;
   
   @GetMapping("/insertForm")
   public String userInsertForm() {
      
      return "user/userInsert";
   }
   
   @RequestMapping(value ="/insert", method = RequestMethod.POST)
   @ResponseBody
   public String updateUser(@RequestParam Map<String,Object> param, HttpSession session){
      log.info("" + param.get("userType"));
      log.info("nameKo" + param.get("userId"));
      log.info("nameKo" + param.get("nameKo"));
      log.info("nameEn" + param.get("nameEn"));
      log.info("reg1" + param.get("reg1"));
      log.info("reg2" + param.get("reg2"));
      log.info("gender" + param.get("gender"));
      log.info("major" + param.get("major"));
      log.info("dept" + param.get("dept"));
      log.info("varInput1" + param.get("varInput1"));
      log.info("varInput2" + param.get("varInput2"));
      log.info("email" + param.get("email"));
      log.info("nation" + param.get("nation"));
      log.info("postcode" + param.get("postcode"));
      log.info("addr1" + param.get("addr1"));
      log.info("addr2" + param.get("addr2"));
      log.info("bank" + param.get("bank"));
      log.info("account" + param.get("account"));
      ServiceResult result = null;
      result = userService.insertUserType(param);
      
      log.info("result1 >>" + result);
//      if(result.equals(ServiceResult.OK)) {
//         result = userService.userCheck(user, session);
//         log.info("result2 >>" + result);
//      }
      
      return "ok";
   }
   
   
}