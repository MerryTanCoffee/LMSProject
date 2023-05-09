package kr.or.ddit.facilty.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.facilty.vo.HallVO;
import kr.or.ddit.facilty.vo.LockerVO;

public interface LockerService {

	// hallCode에 해당하는 사물함 목록을 조회
	public List<LockerVO> getLockerListAjax(String hallCode);
	public Map<String, String> getMyLockerInfo(Map<String, String> dataMap);
	
	// 사물함 이용현황
	public List<LockerVO> selecLockerList();

	// 사물함 예약
	public ServiceResult insertReserve(LockerVO lockerVO);
	
	// 건물명 가져오기
	public List<HallVO> hallList();
	
	// 나의 사물함 사용 리스트
	public List<LockerVO> lockerReservationList(String stuId);

	// 사물함 예약 취소
	public ServiceResult lockerReservationCancel(LockerVO lockerVO);
	

	

	
	

}
