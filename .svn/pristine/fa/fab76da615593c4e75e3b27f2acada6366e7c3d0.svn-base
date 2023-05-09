package kr.or.ddit.common.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.portlet.service.PortletService;
import kr.or.ddit.portlet.vo.PortletResultVO;
import kr.or.ddit.portlet.vo.PortletVO;
import kr.or.ddit.user.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/main")
public class mainController {
	
	@Inject
	private PortletService portletService;
	List<PortletResultVO> resultList = null;
	List<PortletVO> portletList = null;
	List<BoardVO> basicNoticeList = null;
	List<BoardVO> schoolNoticeList = null;
	List<BoardVO> schoolScheduleList = null;
	
	@RequestMapping(value="/mainPage")
	public String mainPage(HttpSession session, Model model) {
		
		UserVO userVO = (UserVO)session.getAttribute("userInfo");
		String stuId = userVO.getStudentVO().getStuId();
		
		// stuId에 해당하는 포틀릿 레이아웃 데이터를 가져온다.
		List<PortletVO> portletList = portletService.portletSelect(stuId);
		model.addAttribute("portletList", portletList);
		// PBOX001, PBOX002, PBOX003, PBOX004, PBOX005, PBOX006
		// PBOX001 : 일반공지 - basicNotice
		// PBOX002 : 학사공지 - schoolNotice
		// PBOX003 : 학사일정 - schoolSchedule
		// PBOX004 : 채용정보 - employmentInfo
		// PBOX005 : 날씨정보 - weatherInfo
		// PBOX006 : 식단정보 - foodInfo
		List<BoardVO> boardList = portletService.selectBoardList();
		basicNoticeList = new ArrayList<BoardVO>();
		
		schoolNoticeList = new ArrayList<BoardVO>();
		schoolScheduleList = new ArrayList<BoardVO>();
		for (int i = 0; i < boardList.size(); i++) {
			String code = boardList.get(i).getCateCode();
			if(code.equals("n002")) {	// 일반공지
				basicNoticeList.add(boardList.get(i));
			}else if(code.equals("n001")) {	// 학사공지 
				schoolNoticeList.add(boardList.get(i));
			}else if(code.equals("r001")) {	// 학사일정
				schoolScheduleList.add(boardList.get(i));
			}
		}
		resultList = new ArrayList<PortletResultVO>();
		setIdToList(portletList);
		
		// 결과로 저장할 리스트 내, 메인에 출력할 데이터 형식을 만들어보기
		// PBOX001, 일반공지, 리스트 데이터
		// PBOX002, 학사공지, 리스트 데이터
		// PBOX003, 학사일정, 리스트 데이터
		// PBOX004, 채용정보, 데이터
		// PBOX005, 날씨정보, 데이터
		
		// PBOX006, 식단정보, 데이터
		
		
		
		model.addAttribute("resultList", resultList);
		model.addAttribute("stuId", stuId);
		return "main/mainPage";
	}
	
	public void setIdToList(List<PortletVO> portletList) {
		for (int i = 0; i < portletList.size(); i++) {
			int x = portletList.get(i).getPoX();
			int y = portletList.get(i).getPoY();
			String code = portletList.get(i).getPoCateId();
			// 0,0
			
			System.out.println(":::::: setIdToList, " + i + " ____ " + code);
			if(x == 0 && y == 0) {
				rollProcess(i, code);
			}else if(x == 4 && y == 0) {
				rollProcess(i, code);
			}else if(x == 8 && y == 0) {
				rollProcess(i, code);
			}else if(x == 0 && y == 1) {
				rollProcess(i, code);
			}else if(x == 4 && y == 1) {
				rollProcess(i, code);
			}else if(x == 8 && y == 1) {
				rollProcess(i, code);
			}
			// 0,4
			// 0,8
			// 4,0
			// 4,4
			// 4,8
		}
	}
	
	public void rollProcess(int i, String cateCode) {
//		List<PortletResultVO> portletResultList = new ArrayList<PortletResultVO>();
		PortletResultVO prVO = new PortletResultVO();
		if(cateCode.equals("PBOX001")) {	// 일반공지
			prVO.setHeader("일반공지");
			prVO.setCode(cateCode);
			prVO.setDataList(basicNoticeList);
			resultList.add(prVO);
		}else if(cateCode.equals("PBOX002")) {	// 학사공지
			prVO.setHeader("학사공지");
			prVO.setCode(cateCode);
			prVO.setDataList(schoolNoticeList);
			resultList.add(prVO);
		}else if(cateCode.equals("PBOX003")) {	// 학사일정
			prVO.setHeader("학사일정");
			prVO.setCode(cateCode);
			prVO.setDataList(schoolScheduleList);
			resultList.add(prVO);
		}else if(cateCode.equals("PBOX004")){		// 채용정보
			prVO.setHeader("채용정보");
			prVO.setCode(cateCode);
			prVO.setDataList(null);
			resultList.add(prVO);
		}else if(cateCode.equals("PBOX005")){		// 날씨정보
			prVO.setHeader("날씨정보");
			prVO.setCode(cateCode);
			prVO.setDataList(null);
			resultList.add(prVO);
		}else if(cateCode.equals("PBOX006")){		// 식단정보
			prVO.setHeader("식단정보");
			prVO.setCode(cateCode);
			prVO.setDataList(null);
			resultList.add(prVO);
		}
	}

	@ResponseBody
	@RequestMapping(value="/insertPortlet", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public ServiceResult insertPortlet(@RequestBody List<PortletVO> portletList, HttpServletRequest req) {
		ServiceResult result = null;
		
		HttpSession session = req.getSession();
		UserVO userVO = (UserVO) session.getAttribute("userInfo");
		String stuId = userVO.getStudentVO().getStuId();
		
		System.out.println(portletList.toString());
		for (int i = 0; i < portletList.size(); i++) {
			portletList.get(i).setPoCateId(portletList.get(i).getId());
			portletList.get(i).setStuId(stuId);
			portletList.get(i).setPoH(2);
			portletList.get(i).setPoW(portletList.get(i).getW());
			portletList.get(i).setPoY(portletList.get(i).getY());
			portletList.get(i).setPoX(portletList.get(i).getX());
			
			
			portletList.get(i).setPoYn(1);
		}
		return portletService.insertPortlet(portletList);
	}
	
	
}
