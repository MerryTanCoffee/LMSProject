package kr.or.ddit.certificate.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.certificate.service.ICertificateService;
import kr.or.ddit.certificate.vo.CertificateVO;
import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.mapper.CertificateMapper;
import kr.or.ddit.mapper.ScoreMapper;
import kr.or.ddit.score.vo.ScoreVO;

@Service
public class CertificateServiceImpl implements ICertificateService{

	@Inject
	private ScoreMapper scoreMapper;

	@Inject
	private CertificateMapper certificateMapper;
	
	@Override
	public List<ScoreVO> scoreCerList(ScoreVO score) throws Exception {
		return scoreMapper.list();
	}

	@Override
	public List<CertificateVO> cerList(CertificateVO cer) throws Exception {
		return certificateMapper.list(cer);
	}

	@Override
	public int insert(CertificateVO cer) throws Exception {
		return certificateMapper.insert(cer);
	}

}
