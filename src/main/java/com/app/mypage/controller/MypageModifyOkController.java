package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.UserDAO;
import com.app.vo.UserVO;

public class MypageModifyOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		HttpSession session = req.getSession();
		String loginEmail = (String)session.getAttribute("loginUser");
		UserVO userVO = new UserVO();
		UserDAO userDAO = new UserDAO();
		
		if(session.getAttribute("loginUser") == null) {
			result.setPath("../login/login-main.user");
			result.setRedirect(true);
			return result;
		}
		
		String userIdentification = "";
		String userNickname = "";
		String userName = "";
		String userPhone = "";
		String userEmail = "";
		String userAddress = "";
		String userDetailAddress = "";
		
		userIdentification += req.getParameter("userIdentification");
		userNickname += req.getParameter("userNickname");
		userName += req.getParameter("userName");
		userPhone += req.getParameter("userPhone");
		userEmail += req.getParameter("userEmail");
		userAddress += req.getParameter("userAddress");
		userDetailAddress += req.getParameter("userDetailAddress");
		
		userVO.setUserIdentification(userIdentification);
		userVO.setUserNickname(userNickname);
		userVO.setUserName(userName);
		userVO.setUserPhone(userPhone);
		userVO.setUserEmail(userEmail);
		userVO.setUserAddress(userAddress);
		userVO.setUserDetailAddress(userDetailAddress);
//		System.out.println(userVO);
		
		userDAO.updateUser(userVO);
		
		session.invalidate();
		
		session = req.getSession();
		session.setAttribute("loginUser", userEmail);
		
		result.setRedirect(true);
		result.setPath("mypage-main.mypage");
		return result;
	}

}
