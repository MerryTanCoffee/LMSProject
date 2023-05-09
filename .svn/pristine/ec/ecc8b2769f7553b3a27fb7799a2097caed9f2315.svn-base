package kr.or.ddit.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.facilty.vo.HallVO;
import kr.or.ddit.facilty.vo.LockerVO;

@Mapper
public interface LockerMapper {

	// hallCode에 해당하는 사물함 목록 조회
	public List<LockerVO> getLockerListAjax(String hallCode);
	public Map<String, String> getMyLockerInfo(Map<String, String> dataMap);
	
	// 사물함 예약
	public void insertReserve(LockerVO lockerVO);

	// 사물함 이용현황
	public List<LockerVO> selecLockerList();

	// 건물명 가져오기
	public List<HallVO> selectHallList();
	
	// 사물함 사용여부 'N' -> 'Y'로 변경
	public int updateStatus(LockerVO lockerVO);
	
	// 사물함 사용여부 'Y' -> 'N'로 변경
	public int updateStatusN(LockerVO lockerVO);
	
	// 나의 사물함 사용 리스트
	public List<LockerVO> lockerReservationList(String stuId);
	
	// 사물함 예약 취소
	public void lockerReservationCancel(LockerVO lockerVO);
	

	

	
	



}
