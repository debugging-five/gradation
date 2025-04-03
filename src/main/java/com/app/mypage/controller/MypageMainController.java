package com.app.mypage.controller;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MypageDAO;
import com.app.dao.UserDAO;
import com.app.dto.MajorDTO;
import com.app.vo.UserVO;

public class MypageMainController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		HttpSession session = req.getSession();
		UserDAO userDAO = new UserDAO();
		
		if(session.getAttribute("loginUser") == null) {
			result.setPath("../login/login-main.user");
			result.setRedirect(true);
			return result;
		}
		
		String userEmail = (String)session.getAttribute("loginUser");
		
		UserVO userVO = userDAO.selectUserByEmail(userEmail);
		req.setAttribute("userIdentification", userVO.getUserIdentification());
		req.setAttribute("userNickname", userVO.getUserNickname() == null ? "미등록": userVO.getUserNickname());
		req.setAttribute("userName", userVO.getUserName());
		req.setAttribute("userPhone", userVO.getUserPhone());
		req.setAttribute("userEmail", userVO.getUserEmail());
		req.setAttribute("userAddress", userVO.getUserAddress() == null ? "미등록": userVO.getUserAddress());
		req.setAttribute("userDetailAddress", userVO.getUserDetailAddress() == null ? "미등록": userVO.getUserDetailAddress());
		
		if (userVO.getMajorId() == null) {
			req.setAttribute("universityName", "미등록");
			
		}else {
			MajorDTO majorDTO = userDAO.selectMajorDTOByEmail(userEmail);			
			req.setAttribute("universityName", majorDTO.getUniversityName());
		}
		
		result.setPath("mypage-main.jsp");
		return result;
	}
}
