package kr.or.ddit.board.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.board.service.IBoardService;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.msg.vo.MsgVO;
import kr.or.ddit.user.vo.UserVO;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
@RequestMapping("/board")
public class BoardInsertController {

		@Inject
		private IBoardService service;
	
		@GetMapping("/form/{cateCode}")
		public String boardForm(@PathVariable String cateCode, BoardVO boardVO) {
			boardVO.setCateCode(cateCode);
			return "board/form";
		}
		
		@GetMapping("/admin/form/{cateCode}")
		public String adminBoardForm(@PathVariable String cateCode, BoardVO boardVO) {
			boardVO.setCateCode(cateCode);
			return "board_admin/form";
		}
		
		@PostMapping("/insert/{cateCode}")
		public String insertForm(@PathVariable String cateCode,HttpServletRequest req, BoardVO boardVO, Model model) {
			String goPage="";
			HttpSession session = req.getSession();
			UserVO userVO = (UserVO) session.getAttribute("userInfo");
			String userId = userVO.getUserId();
			boardVO.setCateCode(cateCode);
			boardVO.setUserId(userId);
			model.addAttribute("boardVO", boardVO);
			ServiceResult result = service.insertBoard(req,boardVO);
			if(result.equals(ServiceResult.OK)) {
				if(userVO.getUserId().equals(userVO.getStudentVO().getStuId())) {
					goPage = "redirect:/board/list/{cateCode}";
				} else if(userVO.getUserId().equals(userVO.getEmployeeVO().getEmpId())){
					goPage = "redirect:/board_admin/list/{cateCode}";
				}
			}else {
				goPage = "board/form";
			}
			return goPage;
			
		}
		// 관리자 등록
		@PostMapping("/admin/insert/{cateCode}")
		public String insertFormAdmin(@PathVariable String cateCode,HttpServletRequest req, BoardVO boardVO, Model model) {
			String goPage="";
			HttpSession session = req.getSession();
			UserVO userVO = (UserVO) session.getAttribute("userInfo");
			String userId = userVO.getUserId();
			boardVO.setCateCode(cateCode);
			boardVO.setUserId(userId);
			model.addAttribute("boardVO", boardVO);
			ServiceResult result = service.insertBoard(req,boardVO);
			if(result.equals(ServiceResult.OK)) {
					goPage = "redirect:/board/admin/list/{cateCode}";
			}else {
				goPage = "board/admin/form";
			}
			return goPage;
			
		}
		
		
		
}
