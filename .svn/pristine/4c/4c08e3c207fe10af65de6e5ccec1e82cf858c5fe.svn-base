package kr.or.ddit.board.vo;

import org.apache.commons.io.FileUtils;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
@Data
public class BoardAttachVO {
	private MultipartFile item;
	private int boNo;
	private int baNo;
	private String baOrigin;
	private String baSave;
	private long baSize;
	private String baFancySize;
	private String baMime;
	private String baSavePath;
	private String baDowncount;
	
	public BoardAttachVO() {}
	public BoardAttachVO(MultipartFile item) {
		this.item = item;
		baOrigin = item.getOriginalFilename();
		baSize = item.getSize();
		baMime = item.getContentType();
		baFancySize = FileUtils.byteCountToDisplaySize(baSize);
		
	}
}
