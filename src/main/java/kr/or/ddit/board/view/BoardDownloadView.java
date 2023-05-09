package kr.or.ddit.board.view;

import java.io.File;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.servlet.view.AbstractView;

public class BoardDownloadView  extends AbstractView{
//다운로드할때 항상 이런 형태의 옵션들이 들어간다. 

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Map<String, Object> boardAttachMap = (Map<String, Object>) model.get("boardAttachMap");
		
		File saveFile = new File(boardAttachMap.get("baSavePath").toString());
		String baOrigin = boardAttachMap.get("baOrigin").toString();
		String agent = request.getHeader("User-Agent");//다운로드했을떄 한글이 깨져나오는 경우 이부분 확인해야한다. 한글파일 깨지지않게 인코딩 해야함.
		if(StringUtils.containsIgnoreCase(agent, "msie")) {
			baOrigin = URLEncoder.encode(baOrigin, "UTF-8"); // IE,Chrome
		
		}else {
			baOrigin = new String(baOrigin.getBytes(),"ISO-8859-1"); //firefox,chrome
		}
		
		response.setHeader("Content-Disposition", "attachement;baOrigin=\""+baOrigin+"\"");
		response.setHeader("Content-Length", boardAttachMap.get("baSize").toString());
		OutputStream os = response.getOutputStream();
		FileUtils.copyFile(saveFile, os);
	}

}
