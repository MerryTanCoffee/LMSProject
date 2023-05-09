package kr.or.ddit.mapper;

import java.util.List;

import kr.or.ddit.classRoom.notice.vo.NoticeVO;

public interface NoticeMapper {

	public int selectNoticeCount(NoticeVO noticeVO);

	public List<NoticeVO> selectNoticeList(String lecCode);

	public NoticeVO selectNotice(int lecNoticeNo);

	public void incrementHit(int lecNoticeNo);

	public String selectSubName(String lecCode);

	public int insertNotice(NoticeVO noticeVO);

}
