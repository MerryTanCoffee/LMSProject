package kr.or.ddit.common.service.impl;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.ExcelMapper;
import kr.or.ddit.user.vo.StudentVO;
import lombok.extern.slf4j.Slf4j;
import kr.or.ddit.common.controller.ExcelRead;
import kr.or.ddit.common.controller.ExcelReadOption;
import kr.or.ddit.common.service.IExcelService;

@Slf4j
@Service
public class ExcelServiceImpl implements IExcelService {

	@Inject
	private ExcelMapper mapper;

	@Override
	public List<StudentVO> selectList() throws Exception {
		return mapper.selectAll();
	}

	@Override
	public List<Map<String, String>>  excelUpload(File destFile) {
		
		ExcelReadOption userExcelReadOption = new ExcelReadOption();
        //파일경로 추가
		userExcelReadOption.setFilePath(destFile.getAbsolutePath());
		
        //추출할 컬럼명 추가
        // 컬럼이 더 존재할 때 여기에 값을 추가해주고
        // 쿼리에 item.F 등으로 추가해주세요!
        userExcelReadOption.setOutputColumns("A", "B", "C", "D");
        userExcelReadOption.setStartRow(2);
        List<Map<String, String>> userExcelContent  = ExcelRead.read(userExcelReadOption);
        Map<String, Object> userParamMap = new HashMap<String, Object>();
        userParamMap.put("excelContent", userExcelContent);
        mapper.insertUser(userParamMap);
       
        ExcelReadOption resultExcelReadOption = new ExcelReadOption();
        resultExcelReadOption.setFilePath(destFile.getAbsolutePath());
        resultExcelReadOption.setOutputColumns("A", "B", "C", "D","E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V");
        resultExcelReadOption.setStartRow(2);
        List<Map<String, String>> resultExcelContent  = ExcelRead.read(resultExcelReadOption);
        log.info("resultExcelContent >> " + resultExcelContent);
        	Map<String, String> row = userExcelContent.get(1);
        	
	        if (row.get("D").equals("STU") && row.get("A").substring(0,1).equals("2")) {
	        System.out.println("index stu >> " + row);	
	        ExcelReadOption stuExcelReadOption = new ExcelReadOption();
	        stuExcelReadOption.setFilePath(destFile.getAbsolutePath());
	        stuExcelReadOption.setOutputColumns("A", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q");
	        stuExcelReadOption.setStartRow(2);
	        List<Map<String, String>> stuExcelContent  = ExcelRead.read(stuExcelReadOption);
	        Map<String, Object> stuParamMap = new HashMap<String, Object>();
	        stuParamMap.put("excelContent", stuExcelContent);
	       
	        int cnt = mapper.insertStu(stuParamMap);
	        
		        if(cnt > 0) {
		        ExcelReadOption acaExcelReadOption = new ExcelReadOption();	
		        acaExcelReadOption.setFilePath(destFile.getAbsolutePath());
		        acaExcelReadOption.setOutputColumns("A", "R", "S", "T", "U", "V");
		        acaExcelReadOption.setStartRow(2);
		        List<Map<String, String>> acaExcelContent  = ExcelRead.read(acaExcelReadOption);
		        Map<String, Object> acaParamMap = new HashMap<String, Object>();
		        acaParamMap.put("excelContent", acaExcelContent);
		    
		        
		        mapper.insertAca(acaParamMap);
		        }
	        }
	    

	        if (row.get("D").equals("PRO") && row.get("A").substring(0,1).equals("p")) {
	        System.out.println("index pro>> " + row);	
	        
	        ExcelReadOption proExcelReadOption = new ExcelReadOption();
	        proExcelReadOption.setFilePath(destFile.getAbsolutePath());
	        proExcelReadOption.setOutputColumns("A", "R", "E", "F", "G", "H", "S", "I", "J", "K", "L", "N", "O", "T", "U");
	        proExcelReadOption.setStartRow(2);
	        List<Map<String, String>> proExcelContent = ExcelRead.read(proExcelReadOption);
	        Map<String, Object> proParamMap = new HashMap<String, Object>();
	        proParamMap.put("excelContent", proExcelContent);
	        
	        mapper.insertPro(proParamMap);
	        }
	    
	    
	        if (row.get("D").equals("EMP") && row.get("A").substring(0,1).equals("a")) {
	        System.out.println("index emp >> " + row);	
			ExcelReadOption empExcelReadOption = new ExcelReadOption();
			empExcelReadOption.setFilePath(destFile.getAbsolutePath());
	        empExcelReadOption.setOutputColumns("A", "R", "E", "F", "G", "H", "I", "J", "K", "L", "N", "O", "P", "Q", "M");
	        empExcelReadOption.setStartRow(2);
	        List<Map<String, String>> empExcelContent = ExcelRead.read(empExcelReadOption);
	        Map<String, Object> empParamMap = new HashMap<String, Object>();
	        empParamMap.put("excelContent", empExcelContent);
	        
	        mapper.insertEmp(empParamMap);
	        }
	        
	        
	        log.info("resultExcelContent >> " + resultExcelContent);
			return resultExcelContent;
        }
}
