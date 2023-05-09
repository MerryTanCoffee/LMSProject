package kr.or.ddit.board.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.View;

import kr.or.ddit.board.service.IBoardService;
import kr.or.ddit.board.view.BoardDownloadView;
import kr.or.ddit.board.vo.BoardAttachVO;

@Controller
@RequestMapping("/board")
public class BoardDownloadController {

	@Inject
	private IBoardService service;
	
	@GetMapping("/download")
	public View boardDownload(int baNo, Model model) {
		BoardAttachVO boAttachVO = service.boardDownload(baNo);
		Map<String,Object> boardAttachMap = new HashMap<String,Object>();
		boardAttachMap.put("baOrigin", boAttachVO.getBaOrigin());
		boardAttachMap.put("baSize", boAttachVO.getBaSize());
		boardAttachMap.put("baSavePath", boAttachVO.getBaSavePath());
		
		model.addAttribute("boardAttachMap", boardAttachMap);
		
		//리턴되는 noticeDownloadView는 jsp 페이지로 존재하는 페이지 Name을 요청하는게 아니라,
		//클래스를 요청하는 것 인데, 해당 클래스가 스프링에서 제공하는 AbstractView클래스를 상속받는 클래스인데
		//그 클래스는 AbstractView를 상속받아renderMergedOutputModel 함수를 재정의 할 때 View로 취급할 수 있게 해준다.
		return new BoardDownloadView(); // 컨트롤러는 항상 페이지를 리턴한다. 여기서는 클래스지만 페이지를 리턴하는게 됨
		
	}
}
