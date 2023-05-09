package kr.or.ddit.board.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import kr.or.ddit.board.vo.BoardAttachVO;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.board.vo.PaginationInfoVO;
import kr.or.ddit.common.ServiceResult;

public interface IBoardService {

	public int selectBoardCount(PaginationInfoVO<BoardVO> pagingVO);

	public List<BoardVO> selectBoardList(PaginationInfoVO<BoardVO> pagingVO);

	public ServiceResult insertBoard(HttpServletRequest req, BoardVO boardVO);

	public BoardVO selectBoard(int boNo);

	public BoardAttachVO boardDownload(int baNo);

	public String completedStudy(String boTitle);
	
	public List<BoardVO> getBoardList();

	public int iStudyMem(Map<String, Object> param);

	public List<BoardVO> selectStudyList(PaginationInfoVO<BoardVO> pagingVO);  
}
