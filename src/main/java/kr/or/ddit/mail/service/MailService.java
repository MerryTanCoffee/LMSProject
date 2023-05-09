package kr.or.ddit.mail.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import kr.or.ddit.common.ServiceResult;

@Service
public class MailService {
	
	@Autowired
	private JavaMailSender mailSender;

	public ServiceResult sendPw(Map<String, Object> findMap) {
		
		return null;
	}
	
	
}
