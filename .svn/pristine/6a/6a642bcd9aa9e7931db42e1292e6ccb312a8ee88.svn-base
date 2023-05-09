package kr.or.ddit.score.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.score.service.IScoreService;
import kr.or.ddit.score.vo.ScoreVO;
import kr.or.ddit.user.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/graduate")
public class GraduateController {
	
	@Inject
	private IScoreService scoreService;
	
	@RequestMapping(value = "/score", method = RequestMethod.GET)
	public String certificateScore(Locale locale, Model model
			, @RequestParam(value="stuId",required=false) String stuId
    		, HttpServletRequest request) throws Exception{
		log.info("score()");
		HttpSession session = request.getSession();
		UserVO userInfo = (UserVO) session.getAttribute("userInfo");
		String userId = userInfo.getUserId();
		log.info("userId : " + userId);
		System.out.println("/graduate/score : get 요청");
		List<ScoreVO> scoreList = scoreService.read(userId,session);//model.addAttribute("scoreList", scoreList);랑 연결되는데 read 왜쓰는지 몰라 ㅠ
		model.addAttribute("sList", scoreService.stuList(userInfo.getUserId()));
		model.addAttribute("sListJP", scoreService.stuListJP(userInfo.getUserId()));
		model.addAttribute("sListJS", scoreService.stuListJS(userInfo.getUserId()));
		model.addAttribute("sListGP", scoreService.stuListGP(userInfo.getUserId()));
		model.addAttribute("sListGS", scoreService.stuListGS(userInfo.getUserId()));
		model.addAttribute("averageList", scoreService.averageList(userInfo.getUserId()));
        model.addAttribute("scoreList", scoreList);
		return "score/graduatePage";
	}
	
}
