package kr.or.ddit.facilty.service;

import java.util.List;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.facilty.vo.FacilityPaginationInfoVO;
import kr.or.ddit.facilty.vo.FacilityReservationVO;
import kr.or.ddit.facilty.vo.FacilityVO;

public interface FacilityService {
	// 시설 정보
	public List<FacilityVO> getFacility(String facCode);

	// 시설 예약
	public ServiceResult reservation(FacilityReservationVO facilityReservationVO);
	
	// 한개의 시설에 대한 예약 정보
	public List<FacilityReservationVO> getFacilityReservation(String facCode);

	// 나의 시설예약 리스트
	public List<FacilityVO> facilityReservationList(String stuId);

	public ServiceResult reservationCancel(FacilityReservationVO facilityReservationVO);

	// 페이징 처리한 리스트
	public int selectFacilityListCount(FacilityPaginationInfoVO<FacilityReservationVO> pagingVO);
	public List<FacilityReservationVO> selectFacilityList(FacilityPaginationInfoVO<FacilityReservationVO> pagingVO);

}
