package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.facilty.vo.FacilityPaginationInfoVO;
import kr.or.ddit.facilty.vo.FacilityReservationVO;
import kr.or.ddit.facilty.vo.FacilityVO;

public interface FacilityMapper {
	// 시설정보
	public List<FacilityVO> getFacility(String facCode);
	
	// 시설 예약하기
	public int reservation(FacilityReservationVO facilityReservationVO);
	
	// 한 개의 시설에 대한 예약 정보
	public List<FacilityReservationVO> getFacilityReservation(String facCode);

	// 나의 예약 정보
	public void myReservationList(String stuId);

	// 나의 시설예약 리스트
	public List<FacilityVO> facilityReservationList(String stuId);

	// 시설 예약 취소
	public int reservationCancel(FacilityReservationVO facilityReservationVO);

	// 페이징 처리 리스트
	public int selectFacilityListCount(FacilityPaginationInfoVO<FacilityReservationVO> pagingVO);
	public List<FacilityReservationVO> selectFacilityList(FacilityPaginationInfoVO<FacilityReservationVO> pagingVO);

}
