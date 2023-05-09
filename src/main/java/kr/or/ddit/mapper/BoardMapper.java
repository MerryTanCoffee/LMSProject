package kr.or.ddit.mapper;

import java.util.List;
import java.util.Map;

import kr.or.ddit.board.vo.BoardAttachVO;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.board.vo.PaginationInfoVO;

public interface BoardMapper {
	public int insertBoard(BoardVO boardVO);

	public void insertBoardAttach(BoardAttachVO boardAttachVO);

	public int selectBoardCount(PaginationInfoVO<BoardVO> pagingVO);

	public List<BoardVO> selectBoardList(PaginationInfoVO<BoardVO> pagingVO);

	public void incrementHit(int boNo);

	public BoardVO selectBoard(int boNo);

	public void incrementBoardDowncount(int baNo);

	public BoardAttachVO boardDownload(int baNo);
    
	public void insertStudy(BoardVO boardVO);

	public void insertStudyMember(BoardVO boardVO);

	public void insertStudyStatus(BoardVO boardVO);
	
	public String completedStudy(String boTitle);
	
	public int iStudyMem(Map<String, Object> param);

	public List<BoardVO> selectStudyList(PaginationInfoVO<BoardVO> pagingVO);    
	
	public List<BoardVO> getBoardList();
	
}
