package kr.or.ddit.common.controller;

import java.io.IOException;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;

@Controller
public class ReCaptchaController {
	
	@ResponseBody
	@PostMapping("/VerifyRecaptcha")
	public ResponseEntity<?> VerifyRecaptcha(String recaptcha) throws IOException {
        VerifyRecaptcha.setSecretKey("6Ldy-iUlAAAAAL2QgMSbv7ZzTGQQuAeoyIxHfVqI"); //6Ldy-iUlAAAAAL2QgMSbv7ZzTGQQuAeoyIxHfVqI     
        return ResponseEntity.status(HttpStatus.OK).body(VerifyRecaptcha.verify(recaptcha));
    }
}
