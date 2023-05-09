package kr.or.ddit.tuition.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class TuitionVO {
	private int tlNo;
	private String stuId;
	private String tlDueDate;
	private String tlStatus;
	private int tlYear;
	private int tlSemester;
	private int tlTuition;
	private int tlSchlr;
	private int tlPayment;
	private int rnum;
}
