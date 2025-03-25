package com.app.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.UserDAO;
import com.app.vo.UserVO;

public class UserLoginOkController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		UserDAO userDAO = new UserDAO();
		UserVO userVO = new UserVO();
		String userEmail = null;
		int userBanOk = -1;
		
		HttpSession session = req.getSession();
		
		userVO.setUserId(req.getParameter("userId"));
		userVO.setUserPassword(req.getParameter("userPassword"));
		
		userBanOk = userDAO.banCheck(userVO);
		userEmail = userDAO.login(userVO);
		
		result.setRedirect(true);
		session.setAttribute("userEmail", userEmail);
		
//		userBan == 0 로그인 성공
//		userBan == -1 유저조회 불가 로그인 실패
//		userBan == 1 정지유저 로그인 실패
		if(userBanOk == -1) {
			result.setPath(req.getContextPath() + "/login/login-main.user?login=false");
			return result;
		}else if(userBanOk == 1) {
			result.setPath(req.getContextPath() + "/login/login-main.user?login=ban");
			return result;
		}

		session.invalidate();	// 기존의 세션정보 초기화
		session = req.getSession();
		session.setAttribute("loginUser", userEmail);
//		메인페이지로 
		result.setPath(req.getContextPath() + "/main/main.main");
		return result;
	}
}
