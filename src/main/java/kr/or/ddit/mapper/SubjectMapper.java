package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.common.vo.DepartmentVO;
import kr.or.ddit.subject.vo.SubjectVO;

public interface SubjectMapper {

	public List<SubjectVO> subjectList();

	public List<DepartmentVO> deptList();

	public List<SubjectVO> subjectSearch(SubjectVO subject);

	public String totalCount();

}
