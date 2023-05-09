package kr.or.ddit.common.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import kr.or.ddit.common.service.IExcelService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/user")
@Transactional(readOnly = true, propagation = Propagation.REQUIRED, rollbackFor={Exception.class})
public class POIController {
	
	//컬럼 이름 바꿔줘야한다
	final String[] colNames = {
			"아이디", "비밀번호", "활성", "타입", "한글성명", "영문성명", "주민번호앞", "주민번호뒷", "이메일", "전화", "국가", "성별"
			, "우편번호", "주소1", "주소2", "은행", "계좌", "프로필번호", "과코드", "전공", "상태", "학년", "연구실연락처", "연구실호수", "프로필번호"
		};
	
	@Inject
	private IExcelService excelService;
	
	
	public class ExcelList {
	    private List<Map<String, String>> excelList;

	    public ExcelList(List<Map<String, String>> excelList) {
	        this.excelList = excelList;
	    }

	    public List<Map<String, String>> getExcelList() {
	        return excelList;
	    }

	    public void setExcelList(List<Map<String, String>> excelList) {
	        this.excelList = excelList;
	    }
	}
	
	
   @RequestMapping(value = "/excelUpload", method = RequestMethod.POST ,headers = ("content-type=multipart/*"))
       public ModelAndView excelUploadAjax(MultipartFile testFile, MultipartHttpServletRequest request) throws  Exception{
       
       System.out.println("업로드 진행");
       
       MultipartFile excelFile = request.getFile("excelFile");
       
       if(excelFile == null || excelFile.isEmpty()) {
           throw new RuntimeException("엑셀파일을 선택해 주세요");
       }
       
       File destFile = new File("C:\\upload\\"+excelFile.getOriginalFilename());
       
       try {
           //내가 설정한 위치에 내가 올린 파일을 만들고 
           excelFile.transferTo(destFile);
       }catch(Exception e) {
           throw new RuntimeException(e.getMessage(),e);
       }
       
       //업로드를 진행하고 다시 지우기
       List<Map<String, String>> excelList = excelService.excelUpload(destFile);
       
       log.info("excelList >> " + excelList);
       destFile.delete();
       
       ModelAndView view = new ModelAndView();
       view.setViewName("redirect:/user/exList");

       HttpSession session = request.getSession();
       session.setAttribute("excelList", excelList);
       session.setAttribute("status", "ex");
       
       RedirectView redirectView = new RedirectView("/user/exList");
       redirectView.setExposeModelAttributes(false);
       return new ModelAndView(redirectView);
       
       
   }
	
}