package kr.or.ddit.user.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.profile.service.IProfileService;
import kr.or.ddit.profile.vo.ProfileVO;
import kr.or.ddit.user.service.IUserService;
import kr.or.ddit.user.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/user")
public class UserUpdateController {

	@Autowired
	private IUserService userService;
	
	@GetMapping("/updateForm")
	public String userDetail() {

		
		return "user/userUpdate";
	}
	
	@RequestMapping(value ="/update", method = RequestMethod.POST)
	@ResponseBody
	public String updateUser(@RequestParam Map<String,Object> param, HttpSession session){
		log.info("" + param.get("userId"));
		ServiceResult result = null;
		result = userService.updateUser(param);
		log.info("result1 >>" + result);
		UserVO user = (UserVO) session.getAttribute("userInfo");
		
		if(result.equals(ServiceResult.OK)) {
			result = userService.userCheck(user, session);
			log.info("result2 >>" + result);
		}
		
		return "ok";
	}
	
	// 비밀번호 변경 폼
	@GetMapping("/updPasswordForm")
	public String updPasswordForm(@RequestParam (name="userId")String userId, Model model) {
		
		model.addAttribute("userId", userId);
		
		return "/updatePassword";
	}
	
	// 비밀번호 변경
	@ResponseBody
	@PostMapping("/updPassword")
	public int updPassword(@RequestBody UserVO userVO) {
		
		return userService.updPassword(userVO);
	}

}
