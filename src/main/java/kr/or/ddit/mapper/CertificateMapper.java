package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.certificate.vo.CertificateInfoVO;
import kr.or.ddit.certificate.vo.CertificateVO;
import kr.or.ddit.common.ServiceResult;

public interface CertificateMapper {

	public List<CertificateVO> list(CertificateVO cer) throws Exception;

	public int insert(CertificateVO cer) throws Exception;
	
	public List<CertificateInfoVO> listInfo() throws Exception;

}