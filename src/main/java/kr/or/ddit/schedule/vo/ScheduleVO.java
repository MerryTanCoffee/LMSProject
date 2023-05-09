package kr.or.ddit.schedule.vo;

import java.util.List;

import lombok.Data;

@Data
public class ScheduleVO {
	private int usNo;
	private String usTitle;
	private String usContent;
	private String usSdate;
	private String usEdate;
	private String usBarColor;
	private String usFontColor;
	private List<ScheduleVO> schList;
}
