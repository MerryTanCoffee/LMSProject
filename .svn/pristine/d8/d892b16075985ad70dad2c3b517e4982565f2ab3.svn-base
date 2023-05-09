package kr.or.ddit.profile.service.impl;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.ProfileMapper;
import kr.or.ddit.profile.service.IProfileService;
import kr.or.ddit.profile.vo.ProfileVO;
import kr.or.ddit.user.vo.UserVO;

@Service
public class ProfileServiceImpl implements IProfileService{

   @Autowired
   private ProfileMapper profileMapper;
   

   @Override
   public void insertProfile(ProfileVO profile, HttpSession session) {
      int icnt = profileMapper.insertProfile(profile);
      UserVO user = (UserVO) session.getAttribute("userInfo");
      Map<String, String> userProfile = new HashMap<String, String>();
      
      if(icnt > 0) {
         userProfile.put("userId", user.getUserId());
         userProfile.put("userType", user.getUserType());
         userProfile.put("profileNo", ""+profile.getProfileNo());
         profileMapper.updateUserProfileNo(userProfile);
      }
      
      
   }
   
   @Override
   public void updateProfile(ProfileVO profile, HttpSession session) {
      int icnt = profileMapper.updateProfile(profile);
      UserVO user = (UserVO) session.getAttribute("userInfo");
      Map<String, String> userProfile = new HashMap<String, String>();
      if(icnt > 0) {
         userProfile.put("userId", user.getUserId());
         userProfile.put("userType", user.getUserType());
         userProfile.put("profileNo", ""+profile.getProfileNo());
         profileMapper.updateUserProfileNo(userProfile);
      }
   }
   
   @Override
   public ProfileVO getProfile(int profileNo) {
      return profileMapper.getProfile(profileNo);
      
   }

@Override
public ProfileVO searchProfile(String stuId) {
	return profileMapper.searchProfile(stuId);
}


}