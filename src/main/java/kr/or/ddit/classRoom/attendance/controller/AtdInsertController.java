package kr.or.ddit.classRoom.attendance.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.classRoom.attendance.service.IAtdInsertService;
import kr.or.ddit.classRoom.attendance.vo.AtdVO;
import kr.or.ddit.common.ServiceResult;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/atd")
public class AtdInsertController {

	@Inject
	private IAtdInsertService service;

	@GetMapping("/list/{lecCode}")
	public String profAtd(@PathVariable String lecCode , AtdVO atdVO ,Model model) {
		List<AtdVO> atd = service.selectAtdList(lecCode);
		String subName = service.selectSubName(lecCode);
		List<Map<String, String>> classInfoList = new ArrayList<Map<String,String>>();
		List<Map<String, String>> iconInfoList = new ArrayList<Map<String,String>>();
		String[] status = {"W","Y","N"};
		String[] classArr = {"","text-success","text-danger"};
		String[] iconArr = {"", "fa-solid fa-check", "fa-regular fa-xmark"};
		
		for (int i = 0; i < atd.size(); i++) {
			Map<String, String> classInfoMap = new HashMap<String, String>();
			Map<String, String> iconInfoMap = new HashMap<String, String>();
			for (int j = 0; j < status.length; j++) {
				if(atd.get(i).getWeek1().equals(status[j])) {
					classInfoMap.put("week1", classArr[j]);
					iconInfoMap.put("week1", iconArr[j]);
				}
				if(atd.get(i).getWeek2().equals(status[j])) {
					classInfoMap.put("week2", classArr[j]);
					iconInfoMap.put("week2", iconArr[j]);
				}
				if(atd.get(i).getWeek3().equals(status[j])) {
					classInfoMap.put("week3", classArr[j]);
					iconInfoMap.put("week3", iconArr[j]);
				}
				if(atd.get(i).getWeek4().equals(status[j])) {
					classInfoMap.put("week4", classArr[j]);
					iconInfoMap.put("week4", iconArr[j]);
				}
				if(atd.get(i).getWeek5().equals(status[j])) {
					classInfoMap.put("week5", classArr[j]);
					iconInfoMap.put("week5", iconArr[j]);
				}
				if(atd.get(i).getWeek6().equals(status[j])) {
					classInfoMap.put("week6", classArr[j]);
					iconInfoMap.put("week6", iconArr[j]);
				}
				if(atd.get(i).getWeek7().equals(status[j])) {
					classInfoMap.put("week7", classArr[j]);
					iconInfoMap.put("week7", iconArr[j]);
				}
				if(atd.get(i).getWeek8().equals(status[j])) {
					classInfoMap.put("week8", classArr[j]);
					iconInfoMap.put("week8", iconArr[j]);
				}
				if(atd.get(i).getWeek9().equals(status[j])) {
					classInfoMap.put("week9", classArr[j]);
					iconInfoMap.put("week9", iconArr[j]);
				}
				if(atd.get(i).getWeek10().equals(status[j])) {
					classInfoMap.put("week10", classArr[j]);
					iconInfoMap.put("week10", iconArr[j]);
				}
				if(atd.get(i).getWeek11().equals(status[j])) {
					classInfoMap.put("week11", classArr[j]);
					iconInfoMap.put("week11", iconArr[j]);
				}
				if(atd.get(i).getWeek12().equals(status[j])) {
					classInfoMap.put("week12", classArr[j]);
					iconInfoMap.put("week12", iconArr[j]);
				}
				if(atd.get(i).getWeek13().equals(status[j])) {
					classInfoMap.put("week13", classArr[j]);
					iconInfoMap.put("week13", iconArr[j]);
				}
				if(atd.get(i).getWeek14().equals(status[j])) {
					classInfoMap.put("week14", classArr[j]);
					iconInfoMap.put("week14", iconArr[j]);
				}
				if(atd.get(i).getWeek15().equals(status[j])) {
					classInfoMap.put("week15", classArr[j]);
					iconInfoMap.put("week15", iconArr[j]);
				}
				if(atd.get(i).getWeek16().equals(status[j])) {
					classInfoMap.put("week16", classArr[j]);
					iconInfoMap.put("week16", iconArr[j]);
				}
			}
			classInfoList.add(classInfoMap);
			iconInfoList.add(iconInfoMap);
		}
		model.addAttribute("classInfoList", classInfoList);
		model.addAttribute("iconInfoList", iconInfoList);
		model.addAttribute("atd", atd);
		model.addAttribute("lecCode", lecCode);
		model.addAttribute("subName", subName);
		return "atd/profAtd";
	}
	
	@RequestMapping(value ="/update", method = RequestMethod.POST)
	@ResponseBody
	public String updateUser(@RequestParam Map<String,Object> atdMap){
		ServiceResult result = null;
		result = service.updateAtd(atdMap);
		log.info("result1 >>" + result);
		
		return "ok";
	}
	@RequestMapping(value ="/scoreUpdate", method = RequestMethod.POST)
	@ResponseBody
	public String scoreUpdate(@RequestParam Map<String,Object> atdMap){
		ServiceResult result = null;
		result = service.scoreUpdate(atdMap);
		log.info("성적업데이트 >>" + result);
		
		return "ok";
	}

}
