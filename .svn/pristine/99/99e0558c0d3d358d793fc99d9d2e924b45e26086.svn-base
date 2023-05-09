package kr.or.ddit.score.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.academic.vo.AcademicVO;
import kr.or.ddit.lecture.service.ILectureEvalService;
import kr.or.ddit.score.service.IScoreService;
import kr.or.ddit.score.vo.ObjectionVO;
import kr.or.ddit.score.vo.ScoreVO;
import kr.or.ddit.user.vo.StudentVO;
import kr.or.ddit.user.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/score")
public class ScoreController {
	
	
	@Inject 
	private IScoreService service;
	@Inject
	private ILectureEvalService lService;
	
	// 클래스룸화면
		@RequestMapping(value = "/classroom", method = RequestMethod.GET)
		public String selectClass(HttpServletRequest request, Model model, StudentVO studentVO, AcademicVO academicVO)
				throws Exception {
			log.info("classroom()");
			System.out.println("/score/list : get 요청");
			// 교수의 세션적용하기 위함
			HttpSession session = request.getSession(false);
			// 교수세션 쓸거야

			if (session != null && session.getAttribute("userInfo") != null) {
				UserVO userVO = (UserVO) session.getAttribute("userInfo");
				log.info("classroom()메롱" + userVO);
	////////교과목명 실렉트박스용 list입니다//////////학기 강의별로 나뉠수 있게도 쓸 생각입니다. 
				model.addAttribute("selectList", service.selectList(userVO.getUserId()));
				return "score/classroom";

			} else {
				return "redirect:/login";
			}
		}
	
	//등록 화면인데 필요할지...
//	@RequestMapping(value = "/register", method= RequestMethod.GET)
//	public String insertForm() throws Exception {
//		System.out.println("/score/register : GET 요청");
//		return "redirect:/score/list";
//	}
	
	//등록 처리 로직..
	@RequestMapping(value = "/register", method = RequestMethod.POST)
    public String insert(ScoreVO score) throws Exception {
		log.info("insert()");
		System.out.println("/score/register : POST 요청");
        System.out.println("Scontroller param: " + score);
        service.insert(score);
        return "redirect:/score/list?lecCode="+score.getLecCode();
    }
	//선희 화면으로 바꿔낌
	// 전체 학생 점수 조회..  교수가 볼 화면
	//요청URI : /score/list
	//요청URI : /score/list?lecCode=UqSx5xjO
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String scoreList(HttpServletRequest request, Model model, StudentVO studentVO, AcademicVO academicVO,
			@RequestParam(value = "lecCode", required = false) String lecCode) throws Exception {
		log.info("list()");
		System.out.println("/score/list : get 요청");
		// 교수의 세션적용하기 위함
		HttpSession session = request.getSession();
		// 교수세션 쓸거야

		if (session != null && session.getAttribute("userInfo") != null) {
			UserVO userVO = (UserVO) session.getAttribute("userInfo");

			Map<String, String> map = new HashMap<String, String>();
			map.put("userId", userVO.getUserId());
			map.put("lecCode", lecCode);

			List<ScoreVO> list = service.list(map);
			log.info("scoreList->list : " + list);

			// jsp에서 el태그로 써먹음(학생 성적 목록)
			model.addAttribute("sList", list);
////////교과목명 실렉트박스용 list입니다//////////학기 강의별로 나뉠수 있게도 쓸 생각입니다. 
			model.addAttribute("selectList", service.selectList(userVO.getUserId()));
			return "score/stuScoreList";

		} else {
			return "redirect:/login";
		}
	}
	
	//학생 점수 삭제 .. 교수가 하는일
//	@RequestMapping(value = "/delete")
//    public String delete(@RequestParam("stuId") String stuId, @RequestParam("lecCode") String lecCode, RedirectAttributes ra) throws Exception { //get으로 넘어오는 key명과 메서드의 파라미터 변수 명이 같으면 @RequestParam과 같은 역할을 한다.
//		log.info("delete()");
//		System.out.println(stuId + "<- 삭제되었습니다");
//        service.delete(stuId,lecCode);
//        ra.addFlashAttribute("message","삭제 성공");
//        return "redirect:/score/list";
//    }
	
	//학생 점수 삭제 .. 교수가 하는일
	@RequestMapping(value = "/delete")
	public String delete(HttpServletRequest request, RedirectAttributes ra) throws Exception {
	    String stuId = request.getParameter("stuId");
	    String lecCode = request.getParameter("lecCode");
	    
	    Map<String,String> map = new HashMap<String, String>();
		map.put("stuId", stuId);
		map.put("lecCode", lecCode);
	    
		log.info("stuId:" + stuId);
	    log.info("렉코드:" + lecCode);
	    
	    if (stuId == null || lecCode == null) {
	        // 예외 처리
	    } else {
	        log.info("delete()");
	        System.out.println(stuId + "<- 삭제되었습니다");
	        service.delete(map);
	        ra.addFlashAttribute("message", "삭제 성공");
	    }
	    return "redirect:/score/list?lecCode="+lecCode;
	}
	
	
	// 이것의 용도는 무엇이었을까.. 아마도 selectOne 이었을 것이다.
	@RequestMapping(value = "/read", method = RequestMethod.GET)
    public String read(String stuId, Model model, HttpServletRequest request) throws Exception{
        log.info("read()");
        
        HttpSession session = request.getSession();
        
        System.out.println("read get요청!");
        List<ScoreVO> scoreList = service.read(stuId,session);
        model.addAttribute("scoreList", scoreList);
        return "redirect:/score/list";
    }

	//학생 점수 수정 화면
	@RequestMapping(value="/update", method = RequestMethod.GET)
	public String updateForm(String stuId, Model model, HttpServletRequest request) throws Exception{
		log.info("updateForm()");
		
		HttpSession session = request.getSession();
		
		List<ScoreVO> scoreList = service.read(stuId,session);
		model.addAttribute("scoreList", scoreList);
		model.addAttribute("status", "u");
		return "score/studentsScoreList";
	}
	
	//학생 점수 수정 처리
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(ScoreVO score) throws Exception {
		log.info("update()");
		System.out.println("/score/update : POST 요청");
		System.out.println("Scontroller param: " + score);
		service.update(score);
		return "redirect:/score/list?lecCode="+score.getLecCode();
	}
	
	//요청URI : /mylist
	//요청파라미터 : stuId=123456 (x)
	@RequestMapping(value = "/mylist", method = RequestMethod.GET)
    public String MyScoreList(Model model, StudentVO studentVO
    		, AcademicVO academicVO
    		, @RequestParam(value="stuId",required=false) String stuId
    		, HttpServletRequest request) throws Exception {
		log.info("mylist()");
		HttpSession session = request.getSession();
		//session.setAttribute("userInfo", student);
		UserVO userInfo = (UserVO) session.getAttribute("userInfo");
		String userId = userInfo.getUserId();
		
		log.info("userId : " + userId);
		
		System.out.println("/score/mylist : get 요청");
		//jsp에서 el태그로 써먹음
		List<ScoreVO> scoreList = service.read(userId,session);
		
		//List<ScoreVO> sList = service.list();
        //model.addAttribute("sList", scoreList); //안쓸듯
		 model.addAttribute("sList", service.stuList(userInfo.getUserId()));
      //학생용 전선 전필 교선 교필 별 학점평균임...
        model.addAttribute("averageList", service.averageList(userInfo.getUserId()));
        model.addAttribute("scoreList", scoreList);
        model.addAttribute("selectboxYearSeme", service.selectboxYearSeme());
        model.addAttribute("sListJP", service.stuListJP(userInfo.getUserId()));
		model.addAttribute("sListJS", service.stuListJS(userInfo.getUserId()));
		model.addAttribute("sListGP", service.stuListGP(userInfo.getUserId()));
		model.addAttribute("sListGS", service.stuListGS(userInfo.getUserId()));
        return "score/studentScore";
	}
	//학생용임
	@RequestMapping(value = "/mylistDetail", method = RequestMethod.GET)
    public String myScoreListDetail(HttpServletRequest request, Model model, StudentVO studentVO, AcademicVO academicVO) throws Exception {
		log.info("list()");
		System.out.println("/score/list : get 요청");
		// 학생의 세션적용하기 위함
		HttpSession session = request.getSession();
		//학생세션 쓸거야
		UserVO userVO = (UserVO) session.getAttribute("userInfo");
		//jsp에서 el태그로 써먹음
        model.addAttribute("stuList", service.stuList(userVO.getUserId()));
        //학생용 전선 전필 교선 교필 별 학점평균임...
        model.addAttribute("averageList", service.averageList(userVO.getUserId()));
       
        //학생용 이의신청 모습 아예 상상이 안가네...
        model.addAttribute("objectionList", service.objectionList(userVO.getUserId()));
        return "score/studentScoreDetail";
	}
	
	@PostMapping("/mylistDetail")
	public String evalInsert(StudentVO studentVO, String lecCode ,Map<String, Object> param, HttpServletRequest req, Model model)throws Exception{
		HttpSession session  =  req.getSession();
		UserVO userVO = (UserVO)session.getAttribute("userInfo");
		String stuId = userVO.getUserId();
		 model.addAttribute("stuList", service.stuList(userVO.getUserId()));
	        //학생용 전선 전필 교선 교필 별 학점평균임...
	     model.addAttribute("averageList", service.averageList(userVO.getUserId()));
	       
	        //학생용 이의신청 모습 아예 상상이 안가네...
	     model.addAttribute("objectionList", service.objectionList(userVO.getUserId()));
		
		String[] evList = req.getParameterValues("evList");
		String[] evListStringArray = evList[0].split(",");
		int[] evListIntArray = new int[evListStringArray.length];
		int insertCnt = 0;
		int updateCnt = 0;
		String goPage = "";
		for (int i = 0; i < evListStringArray.length; i++) {
		    evListIntArray[i] = Integer.parseInt(evListStringArray[i]);
		    param.put("leiNum", i+1);
		    param.put("leiScore", evListIntArray[i]);
		    param.put("stuId", stuId);
		    param.put("lecCode", lecCode);
		    insertCnt += lService.evalInsert(param);
		    log.info("param"+ param);
		}
		
		if(insertCnt == 7) {
			updateCnt = lService.updateLecEvalStatus(param);
			
			if(updateCnt > 0) {
				goPage = "redirect:/score/mylistDetail";
			}
		} else {
			
			goPage = "redirect:/score/mylistDetail";
		}
		
		return goPage;
		
	}
	
	@ResponseBody
	@RequestMapping(value="/objectionInsert", method=RequestMethod.POST)
	public List<ObjectionVO> objectionInsert(@RequestBody ObjectionVO objectionVO, HttpSession session) throws Exception {
		//ObjectionVO(objNo=0, lecCode=MORzuZUb, stuId=2023160104, objReason=fsdfd
		//, objDate=null, objContent=null, objStatus=null, objPreCredit=80, objReCredit=null, subName=null, proNameKo=null)
		log.info("objectionVO : " + objectionVO);
		//#{objNo}, #{lecCode}, #{stuId}, #{objReason}, sysdate, #{objContent}, #{objStatus}, #{objPreCredit}, #{objReCredit}
		//학생세션 쓸거야
		UserVO userVO = (UserVO) session.getAttribute("userInfo");
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		// insert 
		 int cnt = service.objectionInsert(objectionVO); 
		 
		 log.info("cnt : " + cnt);
		
		 List<ObjectionVO> objVOList = service.objectionList(userVO.getUserId());
			
			
		return objVOList;
	}
	@ResponseBody
	@RequestMapping(value="/listObjection", method=RequestMethod.POST)
	public List<ObjectionVO> listObjection(HttpSession session) throws Exception {
		
		//학생세션 쓸거야
		UserVO userVO = (UserVO) session.getAttribute("userInfo");
		
		List<ObjectionVO> objVOList = service.objectionList(userVO.getUserId());
		
		
		return objVOList;
	}
	
	//교수용 이의신청 리스트
		@RequestMapping(value = "/objProList", method = RequestMethod.GET)
	    public String objProList(HttpServletRequest request, Model model) throws Exception {
			log.info("objProList()");
			System.out.println("/score/objProList : get 요청");
			// 학생의 세션적용하기 위함
			HttpSession session = request.getSession();
			//학생세션 쓸거야
			UserVO userVO = (UserVO) session.getAttribute("userInfo");
	        //학생용 이의신청 모습 아예 상상이 안가네...
	        model.addAttribute("objProList", service.objProList(userVO.getUserId()));
	        return "score/objectionList";
		}
	//교수용 이의신청 수정하기
	@RequestMapping(value="/updateObjection", method = RequestMethod.POST)
	public String updateObjection(ObjectionVO object) throws Exception{
		//ObjectionVO(objNo=0,.. lecCode=, objContent=점수낮아, objStatus=Y, ..objReCredit=80,...)
		log.info("objectionUpdate() : " + object);
		System.out.println("/score/updateObjection : " + object);
		int result = service.objectionUpdate(object);
		
		return "redirect:/score/objProList";
	}
		
	//학생용 이의신청 삭제하기
	@RequestMapping(value = "/deleteObjection")
	public String deleteObjection(HttpServletRequest request
			, RedirectAttributes ra) throws Exception {
		// 학생의 세션적용하기 위함
		HttpSession session = request.getSession();
		//학생세션 쓸거야
		UserVO userVO = (UserVO) session.getAttribute("userInfo");
	    String stuId = userVO.getUserId();
	    String lecCode = request.getParameter("lecCode");
	    
	    Map<String,String> map = new HashMap<String, String>();
		map.put("stuId", stuId);
		map.put("lecCode", lecCode);
	    
		log.info("stuId:" + stuId);
	    log.info("렉코드:" + lecCode);
	    
	    if (stuId == null || lecCode == null) {
	        // 예외 처리
	    } else {
	        log.info("delete()");
	        System.out.println(stuId + "<- 삭제되었습니다");
	        
	        log.info("map : " + map);
	        
	        int result = service.objectionDelete(map);
	        if(result>0) {
	        	ra.addFlashAttribute("message", "삭제 성공");
	        }else {
	        	ra.addFlashAttribute("message", "삭제 실패");
	        }
	    }
	    return "redirect:/score/mylistDetail?lecCode="+lecCode;
	}
//	업데이트 방식 추가
	@ResponseBody
	@RequestMapping(value = "/updateLectureEval", method = RequestMethod.POST)
	public String updateLectureEval(@RequestBody Map<String,Object>resultMap) throws Exception {
		log.info("updateLectureEval()");
		System.out.println("/score/updateLectureEval : POST 요청");
		//System.out.println("Scontroller param: " + score);
		
		service.updateLectureEval(resultMap);
		return "redirect:/score/stuScoreList";
	}
}