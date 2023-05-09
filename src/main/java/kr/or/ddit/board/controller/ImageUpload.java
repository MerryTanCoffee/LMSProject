package kr.or.ddit.board.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

@Controller
public class ImageUpload {
	
	@RequestMapping("/imageUpload")
	public String imageUpload(
		HttpServletRequest req, HttpServletResponse resp, MultipartHttpServletRequest multiFile) throws Exception{
			JsonObject json = new JsonObject();
			PrintWriter printWriter = null;
			OutputStream out = null;
			long limitSize = 1024 * 1024 * 2; //2MB
			MultipartFile file = multiFile.getFile("upload");
			
			if(file != null && file.getSize() >0 && StringUtils.isNotBlank(file.getName())) {
				if(file.getContentType().toLowerCase().startsWith("image/")) {
					if(file.getSize() > limitSize) {
						JsonObject jsonMsg = new JsonObject();
						JsonArray jsonArr = new JsonArray();
						jsonMsg.addProperty("message", "2MB미만의 이미지만 업로드 가능");
						jsonArr.add(jsonMsg);
						json.addProperty("uploaded", 0);
						json.add("error", jsonArr.get(0));
						
						resp.setCharacterEncoding("UTF-8");
						printWriter = resp.getWriter();
						printWriter.println(json);
						
					}else {//정상적인 사이즈의 이미지 업로드시 발생(정상
						try {
							String baOrigin = file.getName();
							byte[] bytes = file.getBytes();
							String uploadPath = req.getServletContext().getRealPath("/resources/img");
							File uploadFile = new File(uploadPath);
							if(!uploadFile.exists()) {
								uploadFile.mkdirs();
							}
							
							baOrigin = UUID.randomUUID().toString();
							uploadPath = uploadPath +"/" + baOrigin + ".jpg";
							out = new FileOutputStream(new File(uploadPath));
							out.write(bytes);
							
							printWriter = resp.getWriter();
							resp.setContentType("text/html");//editor설정
							String fileUrl = req.getContextPath()+"/resources/img/"+baOrigin +".jpg";
							
							json.addProperty("uploaded", 1);
							json.addProperty("baOrigin", baOrigin);
							json.addProperty("url", fileUrl);
							
							printWriter.println(json);
			
						} catch (IOException e) {
							e.printStackTrace();
						}finally {
							if(out != null) {
								out.close();
							}
							if(printWriter != null) {
								printWriter.close();
							}
						}
					}
				}
			}
			return null;
		}
	
}
