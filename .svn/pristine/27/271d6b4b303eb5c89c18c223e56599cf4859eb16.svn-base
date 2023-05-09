package kr.or.ddit.board.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.RandomStringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.ddit.board.service.IBoardService;
import kr.or.ddit.board.vo.BoardAttachVO;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.board.vo.PaginationInfoVO;
import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements IBoardService {

	@Inject
	private BoardMapper mapper;
	
	@Override
	@Transactional   // 2개의 insert가 세트로 모두 성공해야 함!~~ 1개라도 실패하면 롤백
	 public ServiceResult insertBoard(HttpServletRequest req, BoardVO boardVO) {
		 ServiceResult result = null;

		 if(boardVO.getCateCode().equals("s001")) {
			 String studyCode = RandomStringUtils.randomAlphanumeric(8);
			 boardVO.setStudyCode(studyCode);
			 mapper.insertStudy(boardVO);
			 mapper.insertStudyMember(boardVO);
			 
			 int status = mapper.insertBoard(boardVO);//일반데이터 등록
			 mapper.insertStudyStatus(boardVO);
			 if(status >0) {
					List<BoardAttachVO> boardAttachList = boardVO.getBoardAttachList();
					processBoardAttachList(boardAttachList, boardVO.getBoNo(), req);
					result = ServiceResult.OK;
				}else {
					result = ServiceResult.FAILED;
				}
				return result;
			 
		 }
		 	
			int status = mapper.insertBoard(boardVO);//일반데이터 등록
			if(status >0) {
				List<BoardAttachVO> boardAttachList = boardVO.getBoardAttachList();
				processBoardAttachList(boardAttachList, boardVO.getBoNo(), req);
				
				result = ServiceResult.OK;
			}else {
				result = ServiceResult.FAILED;
			}
			return result;
	}
	
	private void processBoardAttachList(List<BoardAttachVO> boardAttachList, int boNo, HttpServletRequest req) {
		if(boardAttachList != null && boardAttachList.size() >0) {//널 아닌지 확인 
			for(BoardAttachVO boardAttachVO : boardAttachList) {//list에서 하나씩 꺼내서 
				String saveName = UUID.randomUUID().toString();
				saveName += "_"+ boardAttachVO.getBaOrigin();//원본이름
				String saveLocate = req.getServletContext().getRealPath("/resources/board/"+boNo);//이경로로 서버업로드경로를 설정하겠다. 어떤게시글번호에 어떤파일이 있는지 정렬
				
				File file = new File(saveLocate);
				if(!file.exists()) {
					file.mkdirs();
				}//여기를 먼저 꼭 해줘야한다.
				
				saveLocate += "/"+ saveName;
				File saveFile = new File(saveLocate);//최종경로에 파일객체 만듦
				boardAttachVO.setBoNo(boNo);
				boardAttachVO.setBaSave(saveName);
				boardAttachVO.setBaSavePath("/resources/board/"+boNo+"/"+saveName);
				mapper.insertBoardAttach(boardAttachVO);
				
				try {
					boardAttachVO.getItem().transferTo(saveFile);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			}
		}		
	}

	@Override
	public int selectBoardCount(PaginationInfoVO<BoardVO> pagingVO) {
		return mapper.selectBoardCount(pagingVO);
	}

	@Override
	public List<BoardVO> selectBoardList(PaginationInfoVO<BoardVO> pagingVO) {
		return mapper.selectBoardList(pagingVO);
	}

	@Override
	public BoardVO selectBoard(int boNo) {
		mapper.incrementHit(boNo);//조회수 증가
		return mapper.selectBoard(boNo);//증가된 조회수를 포함한 공지사항 게시글 정보
	}

	@Override
	public BoardAttachVO boardDownload(int baNo) {
		BoardAttachVO boAttachVO = mapper.boardDownload(baNo);
		if(boAttachVO == null) {
			throw new RuntimeException();
		}
		mapper.incrementBoardDowncount(baNo); //다운로드 횟수 증가
		return boAttachVO;
	}

	@Override
	public String completedStudy(String boTitle) {
		return mapper.completedStudy(boTitle);
	}
	
	@Override
	public List<BoardVO> getBoardList() {
		return mapper.getBoardList();
	}

	@Override
	public int iStudyMem(Map<String, Object> param) {
		int cnt = mapper.iStudyMem(param);
		return cnt;
	}

	@Override
	public List<BoardVO> selectStudyList(PaginationInfoVO<BoardVO> pagingVO) {
		return mapper.selectStudyList(pagingVO);
	}

	
}
