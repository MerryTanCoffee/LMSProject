package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.tuition.vo.TuitionVO;

public interface TuitionMapper {
	// 등록 내역 리스트 조회
	public List<TuitionVO> tuitionList(String userId);
	
	// 등록 내역 납부 확인서 조회
	public TuitionVO tuiDetail(int tlNo);
	
	// 등록금 고지서 조회
	public TuitionVO tuiBillDetail(String userId);
}
