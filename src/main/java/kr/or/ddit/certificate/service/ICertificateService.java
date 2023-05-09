package kr.or.ddit.certificate.service;

import java.util.List;


import kr.or.ddit.certificate.vo.CertificateVO;
import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.score.vo.ScoreVO;

public interface ICertificateService {
	
	public List<ScoreVO> scoreCerList(ScoreVO score) throws Exception;

	public List<CertificateVO> cerList(CertificateVO cer) throws Exception;

	public int insert(CertificateVO cer) throws Exception;
		
}
