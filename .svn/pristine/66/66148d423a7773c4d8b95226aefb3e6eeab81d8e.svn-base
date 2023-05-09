package kr.or.ddit.reference.controller;


import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
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
import kr.or.ddit.common.UploadFileUtils;
import kr.or.ddit.reference.service.IReferenceService;
import kr.or.ddit.reference.vo.ReferenceVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/reference")
public class ReferenceController {


	private String uploadPath ="C:/workspace-sts-3.9.15/workspace/LMSProject/src/main/webapp/resources/board";
	
	@Autowired
	private ClassRoomService classService;
	
	@Autowired
	private IReferenceService referenceService;
	
	@GetMapping("referenceList/{lecCode}")
	public String referenceList(@PathVariable String lecCode, Model model) {
		List <ReferenceVO> referenceList = referenceService.referenceList(lecCode);
		String className  = classService.selectSubName(lecCode);
		model.addAttribute("className", className);
		model.addAttribute("lecCode", lecCode);
		model.addAttribute("referenceList", referenceList);
		return "reference/referenceList";
	}
	
	@ResponseBody
	@PostMapping("/referenceFile")
	public List<ReferenceVO> referenceFile(@RequestParam String lecCode) {
		
		List<ReferenceVO> referenceFile = referenceService.referenceFile(lecCode);
		
		return referenceFile;
	}
	
	@RequestMapping(value="/referenceForm/{lecCode}", method=RequestMethod.GET)
	public String referenceForm(@PathVariable String lecCode, Model model) {
		model.addAttribute("lecCode", lecCode);
		String className  = classService.selectSubName(lecCode);
		model.addAttribute("className", className);
		return "reference/referenceForm";
	}
	
	@ResponseBody
	@RequestMapping(value = "/registerReference/{lecCode}", method = RequestMethod.POST)
	public void insertReference(@PathVariable String lecCode, @RequestBody List<Map<String, Object>> referenceVO) {
		
		log.info("referenceVO"+ referenceVO);
		  for (Map<String, Object> item : referenceVO) {
		    String lrFileName = (String) item.get("lrFileName");
		    String lrFilePath = (String) item.get("lrFilePath");
		    String lrTitle = (String) item.get("lrTitle");
		    String lrFileType = (String) item.get("lrFileType");

		    ReferenceVO reference = new ReferenceVO();
		    reference.setLecCode(lecCode);
		    reference.setLrFileName(lrFileName);
		    reference.setLrFilePath(lrFilePath);
		    reference.setLrTitle(lrTitle);
		    reference.setLrFileType(lrFileType);

		    referenceService.insertReference(reference);
		  }
	}
	
	
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

