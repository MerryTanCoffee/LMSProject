package kr.or.ddit.subject.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.common.vo.DepartmentVO;
import kr.or.ddit.mapper.SubjectMapper;
import kr.or.ddit.subject.service.ISubjectService;
import kr.or.ddit.subject.vo.SubjectVO;

@Service
public class SubjectServiceImpl implements ISubjectService {
	
	@Autowired
	private SubjectMapper subjectMapper;
	
	@Override
	public List<SubjectVO> subjectList() {
		return subjectMapper.subjectList();
	}

	@Override
	public List<DepartmentVO> deptList() {
		return subjectMapper.deptList();
	}

	@Override
	public List<SubjectVO> subjectSearch(SubjectVO subject) {
		
		return subjectMapper.subjectSearch(subject);
	}

	@Override
	public String totalCount() {
		return subjectMapper.totalCount();
	}

}
