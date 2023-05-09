package kr.or.ddit.facilty.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.facilty.service.LockerService;
import kr.or.ddit.facilty.vo.HallVO;
import kr.or.ddit.facilty.vo.LockerVO;
import kr.or.ddit.mapper.LockerMapper;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class LockerServiceImpl implements LockerService {

	@Autowired
	private LockerMapper lockerMapper;
	
	@Override
	public List<LockerVO> getLockerListAjax(String hallCode) {
		return lockerMapper.getLockerListAjax(hallCode);
	}
	
	@Override
	public Map<String, String> getMyLockerInfo(Map<String, String> dataMap) {
		return lockerMapper.getMyLockerInfo(dataMap);
	}
	
	@Override
	public ServiceResult insertReserve(LockerVO lockerVO) {
		ServiceResult result = null;
		
		log.info("락커 넘버/홀코드 : " + lockerVO.toString());
		int cnt = lockerMapper.updateStatus(lockerVO);
		
		
		if(cnt > 0) {
			lockerMapper.insertReserve(lockerVO);
			result = ServiceResult.OK;
		} else {
			result =  ServiceResult.FAILED;
		}
		
		return result;
		
		
	}

	@Override
	public List<LockerVO> selecLockerList() {
		return lockerMapper.selecLockerList();
	}

	@Override
	public List<HallVO> hallList() {
		return lockerMapper.selectHallList();
	}

	
	// 나의 사물함 예약 리스트
	@Override
	public List<LockerVO> lockerReservationList(String stuId) {
		return lockerMapper.lockerReservationList(stuId);
	}

	// 사물함 예약 취소
	@Override
	public ServiceResult lockerReservationCancel(LockerVO lockerVO) {
		ServiceResult result = null;
		
		int cnt = lockerMapper.updateStatusN(lockerVO);
		
		if(cnt > 0) {
			lockerMapper.lockerReservationCancel(lockerVO);
			result = ServiceResult.OK;
		} else {
			result =  ServiceResult.FAILED;
		}
		
		return result;
	}

	




	


}
