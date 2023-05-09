package kr.or.ddit.mapper;


import java.util.List;
import java.util.Map;

import kr.or.ddit.user.vo.StudentVO;

public interface ExcelMapper {

	public List<StudentVO> selectAll() throws Exception;

	public void insertUser(Map<String, Object> userParamMap); 
	
	public int insertStu(Map<String, Object> stuParamMap); 
	
	public void insertAca(Map<String, Object> acaParamMap); 
	
	public void insertPro(Map<String, Object> proParamMap); 
	
	public void insertEmp(Map<String, Object> empParamMap); 

}
