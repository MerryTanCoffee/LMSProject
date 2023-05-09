package kr.or.ddit.sms.service.impl;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.mapper.CoolSmsMapper;
import kr.or.ddit.sms.service.ICoolSmsService;
import kr.or.ddit.sms.vo.CoolSmsVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CoolSmsServiceImpl implements ICoolSmsService {

	@Inject
	CoolSmsMapper mapper;
	
	@Override
	public void insert(CoolSmsVO coolsms) throws Exception {
		mapper.insert(coolsms);
	}

	@Override
	public List<Map<String, Object>> list() throws Exception {
		return mapper.list();
	}

	@Override
	public List<CoolSmsVO> telList() throws Exception {
		return mapper.telList();
	}

	@Override
	public ServiceResult smsRecoedInsert(List<Map<String, Object>> toList) {
		int cnt = 0;
		ServiceResult result = null;
		for (Map<String, Object> smsMap : toList) {
			smsMap.put("smsNo", 0);
			log.info("smsMap: " + smsMap.toString());
			cnt += mapper.smsRecordInsert(smsMap);
		}
		
		if(cnt == toList.size()) {
			result = ServiceResult.OK; 
		}else {
			result = ServiceResult.FAILED;
		}
		
		return result;
	}
}
