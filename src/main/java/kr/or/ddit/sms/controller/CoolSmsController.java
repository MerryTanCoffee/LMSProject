package kr.or.ddit.sms.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.sms.service.ICoolSmsService;
import kr.or.ddit.sms.vo.CoolSmsVO;
import lombok.extern.slf4j.Slf4j;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Slf4j
@Controller
public class CoolSmsController {

	@Inject
	private ICoolSmsService coolService;

	// model은 jsp랑 연결되어서..
	/*
	 * @RequestMapping(value = "/send/sms.do", method = RequestMethod.POST) public
	 * String sendSms(HttpServletRequest request, CoolSmsVO cool, Model model)
	 * throws Exception {
	 */
	@PostMapping(value = "/send/smsCool")
	@ResponseBody
	public List<Map<String, Object>> sendSms(@RequestBody List<Map<String, Object>> toList) throws Exception {
		// request.setCharacterEncoding("UTF-8"); 이부분은 coolsms가 EUC_KR에서만 작동하는줄 알고있어서
		// 작성한 부분임 필요없음.

		log.info("toList : " + toList.toString());

		String api_key = "NCSPAQELCAQ78T5C";
		String api_secret = "MPVSOZLRPBFGFAWLSVHGE5RV0CRKD3RG";
		Message coolsms = new Message(api_key, api_secret);

		HashMap<String, String> smsMap = new HashMap<String, String>();
		for(Map<String, Object> to : toList) {
			smsMap.put("to", to.get("phone").toString()); // 수신번호
			smsMap.put("from", "01044372923"); // 발신번호
			smsMap.put("text", to.get("smsContent").toString()); // 문자내용
			smsMap.put("type", "sms"); // 문자 타입
			smsMap.put("app_version", "test app 1.2");
			
//          이부분에 if문으로 보내기 성공했을때만 DB에 넣는 처리해줘야 함 근데 아직안함..
			try {
				JSONObject result = coolsms.send(smsMap); // 보내기&전송결과받기

				System.out.println("문자보낸 결과: "+ result.toString());
				
			} catch (CoolsmsException e) {
				System.out.println(e.getMessage());
				System.out.println(e.getCode());
			}
		}
		
		ServiceResult res = null;
		res = coolService.smsRecoedInsert(toList);

		if (res.equals(ServiceResult.OK)) {
			List<Map<String, Object>> smsSendList = coolService.list();
			return smsSendList;
		} else {
			List<Map<String, Object>> smsSendList = coolService.list();
			return smsSendList;
		}

	}

	// 화면 보여줘야되니깐 있어야지
	@GetMapping(value = "/send/sms/record")
	public String sendSmsForm(HttpServletRequest request, CoolSmsVO cool) throws Exception {
		return "redirect:/send/sms";
	}

	// 보낸사람누군지 확인차 보여주는 리스트
	@GetMapping(value = "/send/sms")
	public String smsList(Model model) throws Exception {

		System.out.println("/send/sms : get 요청");
		List<Map<String, Object>> list = coolService.list();
		log.info("list()" + list.toString());
		model.addAttribute("telList", coolService.telList());
		model.addAttribute("smsList", list);
		return "sms/sendMessage";
	}
}