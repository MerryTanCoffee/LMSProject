package kr.or.ddit.facilty.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.facilty.service.FacilityService;
import kr.or.ddit.facilty.vo.FacilityPaginationInfoVO;
import kr.or.ddit.facilty.vo.FacilityReservationVO;
import kr.or.ddit.facilty.vo.FacilityVO;
import kr.or.ddit.mapper.FacilityMapper;

@Service
public class FacilityServiceImpl implements FacilityService {

	@Inject
	private FacilityMapper facilityMapper;
	
	// 시설정보
	@Override
	public List<FacilityVO> getFacility(String facCode) {
		return facilityMapper.getFacility(facCode);
	}

	// 시설예약하기
	@Override
	public ServiceResult reservation(FacilityReservationVO facilityReservationVO) {
		ServiceResult result = null;
		int cnt = facilityMapper.reservation(facilityReservationVO);
		
		if(cnt > 0) {
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAILED;
		}
		return result;
	}

	// 한 개의 시설에 대한 예약 정보
	@Override
	public List<FacilityReservationVO> getFacilityReservation(String facCode) {
		return facilityMapper.getFacilityReservation(facCode);
	}

	@Override
	public List<FacilityVO> facilityReservationList(String stuId) {
		return facilityMapper.facilityReservationList(stuId);
	}

	@Override
	public ServiceResult reservationCancel(FacilityReservationVO facilityReservationVO) {
		
		ServiceResult result = null;
		
		int cnt = facilityMapper.reservationCancel(facilityReservationVO);
		
		if(cnt > 0) {
			result = ServiceResult.OK;
		} else {
			result = ServiceResult.FAILED;
		}
		
		return result;
	}

	
	// 페이징 처리한 리스트
	@Override
	public int selectFacilityListCount(FacilityPaginationInfoVO<FacilityReservationVO> pagingVO) {
		return facilityMapper.selectFacilityListCount(pagingVO);
	}

	@Override
	public List<FacilityReservationVO> selectFacilityList(FacilityPaginationInfoVO<FacilityReservationVO> pagingVO) {
		return facilityMapper.selectFacilityList(pagingVO);
	}


}
