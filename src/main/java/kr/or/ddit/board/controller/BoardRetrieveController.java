package kr.or.ddit.board.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.board.service.IBoardService;
import kr.or.ddit.board.vo.BoardAttachVO;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.board.vo.PaginationInfoVO;
import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.msg.service.IMsgService;
import kr.or.ddit.msg.vo.MsgVO;
import kr.or.ddit.profile.service.IProfileService;
import kr.or.ddit.profile.vo.ProfileVO;
import kr.or.ddit.study.vo.StudyVO;
import kr.or.ddit.user.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/board")
public class BoardRetrieveController {
	
	@Inject
	private IBoardService service;
	@Inject
	private IMsgService msgService;
	
	@GetMapping("list/{cateCode}")
	public String boardList(
			@RequestParam(name = "page", required = false, defaultValue = "1")int currentPage,
			@RequestParam(required = false, defaultValue = "title")String searchType,
			@RequestParam(required = false)String searchWord,
			@PathVariable String cateCode,
			HttpSession session,
			Model model
			) {
		BoardVO boardVO = new BoardVO();
		PaginationInfoVO<BoardVO> pagingVO = new PaginationInfoVO<BoardVO>();
		
		//검색조건
		if(StringUtils.isNotBlank(searchWord)) {
			pagingVO.setSearchType(searchType);
			pagingVO.setSearchWord(searchWord);			
			model.addAttribute("searchWord", searchWord);
			model.addAttribute("searchType", searchType);
		}
		
		boardVO.setCateCode(cateCode);
		pagingVO.setCateCode(cateCode);
		pagingVO.setCurrentPage(currentPage);
		
		int totalRecord = service.selectBoardCount(pagingVO);
		pagingVO.setTotalRecord(totalRecord);
		if(cateCode.equals("s001")) {
			List<BoardVO> boardList = service.selectStudyList(pagingVO);
			pagingVO.setDataList(boardList);
		}else {
			List<BoardVO> boardList = service.selectBoardList(pagingVO);
			pagingVO.setDataList(boardList);
		}
		
		model.addAttribute("pagingVO", pagingVO);
		model.addAttribute("cateCode", cateCode);
//		UserVO user = (UserVO) session.getAttribute("userInfo");
//		int profileNo = 0;
//		profileNo = user.getStudentVO().getProfileNo();
//		log.info("profileNo >>>> "+profileNo);
//		if(profileNo > 0) {
//		ProfileVO profile = profileService.getProfile(profileNo);
//		model.addAttribute("profile",profile);
//		} .이렇게하면 모든 사진이 본인사진으로 도배됨 ..ㅎㅎ 서비스에서  userId넣으면 userId의 profileNo을 가져오는 쿼리문을 만들어야 할듯.
		log.info("게시판 카테코드: " + cateCode);
		
		if(cateCode.equals("s001")) {
			return "board/study";
		}
		
		return "board/list";
	}
	
	@GetMapping("/admin/list/{cateCode}")
	public String adminBoardList(
			@RequestParam(name = "page", required = false, defaultValue = "1")int currentPage,
			@RequestParam(required = false, defaultValue = "title")String searchType,
			@RequestParam(required = false)String searchWord,
			@PathVariable String cateCode,
			HttpSession session,
			Model model
			) {
		BoardVO boardVO = new BoardVO();
		PaginationInfoVO<BoardVO> pagingVO = new PaginationInfoVO<BoardVO>();
		
		//검색조건
		if(StringUtils.isNotBlank(searchWord)) {
			pagingVO.setSearchType(searchType);
			pagingVO.setSearchWord(searchWord);			
			model.addAttribute("searchWord", searchWord);
			model.addAttribute("searchType", searchType);
		}
		
		boardVO.setCateCode(cateCode);
		pagingVO.setCateCode(cateCode);
		pagingVO.setCurrentPage(currentPage);
		
		int totalRecord = service.selectBoardCount(pagingVO);
		pagingVO.setTotalRecord(totalRecord);
		if(cateCode.equals("s001")) {
			List<BoardVO> boardList = service.selectStudyList(pagingVO);
			pagingVO.setDataList(boardList);
		}else {
			List<BoardVO> boardList = service.selectBoardList(pagingVO);
			pagingVO.setDataList(boardList);
		}
		
		model.addAttribute("pagingVO", pagingVO);
		model.addAttribute("cateCode", cateCode);

		log.info("게시판 카테코드: " + cateCode);
		
		if(cateCode.equals("s001")) {
			return "board/study";
		}
		
		return "board_admin/list";
	}
	
	// 학생 화면 게시판 상세보기
	@GetMapping("/detail/{boNo}")
	public String boardDetail(@PathVariable int boNo,Model model) {
		BoardVO board = service.selectBoard(boNo);
		model.addAttribute("board", board);
		return "board/detail";
	}
	
	// 관리자 화면 게시판 상세보기
	@GetMapping("/admin/detail/{boNo}")
	public String adminBoardDetail(@PathVariable int boNo,Model model) {
		BoardVO board = service.selectBoard(boNo);
		model.addAttribute("board", board);
		return "board_admin/detail";
	}
	
	
	@PostMapping("/study/{boNo}")
	public String studyIn(@PathVariable int boNo, String cateCode ,String boTitle ,String boId, String motiv, HttpServletRequest req, Model model) throws Exception {
		HttpSession session = req.getSession();
		UserVO userVO = (UserVO) session.getAttribute("userInfo");
		log.info("studyIn(userVO)>>> " + userVO.getUserId());
		log.info("studyIn(boTitle)>>> " + boTitle);
		log.info("studyIn(boNo)>>> " + boNo);
		log.info("studyIn(cateCode)>>> " + cateCode);
		log.info("studyIn(boId)>>> " + boId);
		log.info("studyIn(motiv)>>> " + motiv);
		
		 String userId = userVO.getUserId();
		 MsgVO msgVO = new MsgVO();
		 
 		 msgVO.setMsgReceiver(boId); 
		 msgVO.setMsgSender(userId);
		 msgVO.setMsgContent( ">>>스터디 참여신청 메시지<<< ["+ boTitle + "]를 참여하기를 원하는 학생이 있습니다"
		 		+userVO.getStudentVO().getAcademicVO().getAcaMajor()+userVO.getStudentVO().getStuNameKo() +"입니다" + motiv );
		  
		 log.info("studyIn(boardVO)>>> " + msgVO);
//		 model.addAttribute("msg","참여신청이 완료되었습니다");
		 msgService.insertMsg(msgVO);
		 return "redirect:/board/detail/{boNo}";
	}
	
	@PostMapping("/detail2")
	@ResponseBody
	public int iStuMem(@RequestParam Map<String, Object> param) {
		log.info("param: " + param.toString());
		int cnt = service.iStudyMem(param);
		return cnt;
	}
}
