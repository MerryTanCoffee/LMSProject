package kr.or.ddit.mapper;

import java.util.List;
import java.util.Map;

import kr.or.ddit.sms.vo.CoolSmsVO;

public interface CoolSmsMapper {
	public void insert(CoolSmsVO coolsms) throws Exception;

	public List<Map<String, Object>> list() throws Exception;

	public List<CoolSmsVO> telList() throws Exception;

	public int smsRecordInsert(Map<String, Object> smsMap);

}
