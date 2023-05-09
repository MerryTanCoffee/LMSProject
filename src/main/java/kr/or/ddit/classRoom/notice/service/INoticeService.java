package kr.or.ddit.classRoom.notice.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import kr.or.ddit.classRoom.notice.vo.NoticeVO;
import kr.or.ddit.common.ServiceResult;

public interface INoticeService {

	public List<NoticeVO> selectNoticeList(String lecCode);

	public NoticeVO selectNotice(int lecNoticeNo);

	public int selecNoticeCount(NoticeVO noticeVO);

	public String selectSubName(String lecCode);

	public ServiceResult insertNotice(HttpServletRequest req, NoticeVO noticeVO);

}
