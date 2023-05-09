package kr.or.ddit.lecture.service;

import java.util.Map;

public interface ILectureEvalService {

	public int evalInsert(Map<String, Object> param);

	public int updateLecEvalStatus(Map<String, Object> param);
	
	

}
