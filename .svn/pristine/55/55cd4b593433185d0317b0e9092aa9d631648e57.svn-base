package kr.or.ddit.submit.controller;

import java.io.FileInputStream;
import java.io.InputStream;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.classRoom.main.service.ClassRoomService;
import kr.or.ddit.common.MediaUtils;
import kr.or.ddit.common.ServiceResult;
import kr.or.ddit.common.UploadFileUtils;
import kr.or.ddit.score.vo.ScoreVO;
import kr.or.ddit.submit.service.ISubmitService;
import kr.or.ddit.submit.vo.HomeworkVO;
import kr.or.ddit.submit.vo.SubmitVO;
import kr.or.ddit.user.vo.StudentVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/submit")
public class SubmitController {

	private String uploadPath ="C:/workspace-sts-3.9.15/workspace/LMSProject/src/main/webapp/resources/submit";
	
	@Autowired
	private ISubmitService submitService;
	
	@Autowired
	private ClassRoomService classService;
	

	// 제출한 학생 목록
	@GetMapping("/submitList/{lecCode}/{hwNo}")
	public String submitList(@PathVariable String lecCode,@PathVariable String hwNo , Model model) {
		log.info("hwNo>> "+ hwNo);
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("lecCode", lecCode);
		paramMap.put("hwNo", hwNo);
		List<StudentVO> studentList = submitService.lecStuList(lecCode);
		model.addAttribute("studentList",studentList);
		model.addAttribute("hwNo",hwNo);
		log.info("studentList{}", studentList);

		HomeworkVO homework = submitService.homeworkSelectOne(paramMap);
		model.addAttribute("homework", homework);
		
		return "submit/submitList";
	}
	
	// 숙제 제출
	@ResponseBody
	@RequestMapping(value = "/submitHomework", method = RequestMethod.POST)
	public void insertSubmit(@RequestBody SubmitVO submitVO) {

		int cnt = submitService.insertSubmit(submitVO);
		
		log.info("submitVO"+ submitVO + cnt);
		
	}
	
	// 과제 리스트 화면
	@GetMapping("/homeworkList/{lecCode}")
	public String homeworkList(@PathVariable String lecCode, Model model) {
		List <HomeworkVO> homeworkList = submitService.homeworkList(lecCode);
		String className  = classService.selectSubName(lecCode);
		model.addAttribute("className", className);
		model.addAttribute("lecCode", lecCode);
		model.addAttribute("homeworkList", homeworkList);
		return "submit/homeworkList";
	}
	
	// 과제 등록 폼
	@GetMapping("/homeworkForm/{lecCode}")
	public String homeworkForm(@PathVariable String lecCode, Model model) {
		String className  = classService.selectSubName(lecCode);
		model.addAttribute("className", className);
	    model.addAttribute("lecCode", lecCode);
		return "submit/homeworkForm";
	}
	
	// 과제 등록
	@PostMapping("/insertHomework/{lecCode}")
	public String insertHomework(@PathVariable String lecCode, HomeworkVO homeworkVO, Model model) {
		String goPage="";
		homeworkVO.setLecCode(lecCode);
		homeworkVO.setHwDeadline((LocalDate.now().plusDays(7)).toString());
		model.addAttribute("homeworkVO", homeworkVO);
		ServiceResult result = submitService.insertHomework(homeworkVO);
		if(result.equals(ServiceResult.OK)) {
			goPage = "redirect:/submit/homeworkList/{lecCode}";
		}else {
			goPage = "submit/submit/homeworkForm/{lecCode}";
		}
		return goPage;
		
	}

	// 파일 가져오기
	@ResponseBody
	@PostMapping("/submitFile")
	public List<SubmitVO> submitFile(@RequestParam Map<String, String> paramMap) {
		
		List<SubmitVO> submitFile = submitService.submitFile(paramMap);
		
		return submitFile;
	}
	
	// 점수 주기
	@ResponseBody
	@PostMapping("/submitScore/{hwNo}")
	public String submitScore(@PathVariable int hwNo, @RequestBody ScoreVO scoreVO, SubmitVO submitVO) {
		// 제출테이블에 점수 업데이트
		String stuId = scoreVO.getStuId();
		submitVO.setStuId(stuId);
		submitVO.setSubmScore((int) scoreVO.getAsgScore());
		submitVO.setAssNo(hwNo);
		int cntSubmit = submitService.submitScoreSub(submitVO);
		
		Map<String, String> paramMap = new HashMap<String, String>();
		paramMap.put("lecCode", scoreVO.getLecCode());
		paramMap.put("stuId", stuId);
		
		// 성적테이블에 점수 업데이트
		if(cntSubmit > 0 ) {
			
			// 과제 개수
			int hwCnt = submitService.countHomework(scoreVO.getLecCode()); 
			System.out.println("hwCnt >> "+hwCnt);
			// 과제 당 배점
			double converScore = 100.0 / (hwCnt * 5); // 4점 = 100점만점 / (과제5개 * 최대5점)
			
			System.out.println("converScore >> " + converScore);
			// 과제 테이블에서 점수 (5점만점) 

			double submitScore = submitService.totalSubmit(paramMap);	// 과제5개(hwCnt) * 5점만점(chgScore) = 25점
			System.out.println("submitScore"+submitScore);
			
			double score = converScore * submitScore; // 과제당 배점   * 내 점수 총 합 
			System.out.println("score >> " + score);
			
			scoreVO.setAsgScore(score);	
			System.out.println("scoreVO"+scoreVO);
			System.out.println("asgScore >> " + scoreVO.getAsgScore());
			submitService.submitScore(scoreVO);
		}
		
		return "OK";
	}
//	public static void main(String[] args) {
//		double num = 100.0 / (11 * 5);
//		System.out.println("num >> " + num);
//	}
//	// 점수 주기
//	@ResponseBody
//	@PostMapping("/submitScore/{hwNo}")
//	public String submitScore(@PathVariable int hwNo, @RequestBody ScoreVO scoreVO, SubmitVO submitVO) {
//		// 성적테이블에 점수 업데이트
//		String lecCode = scoreVO.getLecCode();
//		int hwCnt = submitService.countHomework(lecCode);
//		int chgScore = 100/(hwCnt * 5);
//		
//		int score = scoreVO.getAsgScore() ;
//		scoreVO.setAsgScore(score* chgScore);
//		int cnt = submitService.submitScore(scoreVO);
//		if(cnt > 0) {
//			// 제출테이블에 점수 업데이트
//			String stuId = scoreVO.getStuId();
//			
//			submitVO.setStuId(stuId);
//			submitVO.setSubmScore(score);
//			submitVO.setAssNo(hwNo);
//			int cntSubmit = submitService.submitScoreSub(submitVO);
//		}
//		
//		return "OK";
//	}
//	
	
	
	// uploadAjax 메소드는 브라우저에서 넘겨받은 파일을 업로드하고 s_가 붙은 썸네일파일을 생성하는 기능을 담당한다.
	@ResponseBody
	@PostMapping(value="/uploadFile", produces = "application/json;charset=utf-8")
	public List<String> uploadAjax(List<MultipartFile> file) throws Exception {
	
		List<String> saveList = new ArrayList<String>();
		String savedName = "";
		for (MultipartFile mFile : file) {
			savedName = UploadFileUtils.uploadFile(uploadPath, mFile.getOriginalFilename(),mFile.getBytes());
			saveList.add(savedName);
		}
		
		
		log.info("savedName>>>" + saveList);
		return saveList;
	}
	
	@RequestMapping(value="/displayFile", method = RequestMethod.GET)
	public ResponseEntity<byte[]> display(String fileName) throws Exception {
		InputStream in = null;
		ResponseEntity<byte[]> entity = null;
	
		log.info("fileName : " + fileName);
	
		try {
			String formatName = fileName.substring(fileName.lastIndexOf(".")+1); // 확장자 추출
			MediaType mType = MediaUtils.getMediaType(formatName);
			HttpHeaders headers = new HttpHeaders();
			in = new FileInputStream(uploadPath + fileName);
			log.info("in >>" , in);
			if(mType != null) {
				headers.setContentType(mType);
			} else {
				fileName = fileName.substring(fileName.indexOf("_") + 1);
				headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
				headers.add("Content-Disposition", "attachment; filename=\""
						+new String(fileName.getBytes("UTF-8"),"ISO-8859-1") + "\"");
			}
	
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in),headers,HttpStatus.CREATED);
		} catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		} finally {
			in.close();
		}
		return entity;
	}	
	
	
}
