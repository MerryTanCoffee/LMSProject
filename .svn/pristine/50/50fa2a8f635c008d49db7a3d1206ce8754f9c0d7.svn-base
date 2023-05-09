package kr.or.ddit.portlet.service.impl;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.mapper.PortletMapper;
import kr.or.ddit.portlet.service.PortletService;
import kr.or.ddit.portlet.vo.PortletVO;

@Service
public class PortletServiceImpl implements PortletService{
	
	@Inject
	private PortletMapper portletMapper;

	// 위젯 설정 값 저장
	@Override
	public ServiceResult insertPortlet(List<PortletVO> portletList) {
		int resultCnt = 0;
		ServiceResult result = null;
		for (PortletVO portletVO : portletList) {
			resultCnt = portletMapper.insertPortlet(portletVO);
		}
		
		if(resultCnt > 0) {
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAILED;
		}
		return result;
	}

	// 메인페이지에 위젯 뿌령
	@Override
	public List<PortletVO> portletSelect(String userId) {
		return portletMapper.selectPortlet(userId);
	}

	@Override
	public List<BoardVO> selectBoardList() {
		return portletMapper.selectBoardList();
	}

}
