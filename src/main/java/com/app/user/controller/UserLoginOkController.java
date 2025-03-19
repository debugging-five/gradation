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
		
		if(userBanOk == -1) {
			result.setPath(req.getContextPath() + "/login/login-main.user?login=false");
			return result;
		}else if(userBanOk == 1) {
			result.setPath(req.getContextPath() + "/login/login-main.user?login=ban");
			return result;
		}
		System.out.println("로그인성공~~");
		System.out.println(session.getAttribute("userEmail"));
		
		result.setPath(req.getContextPath() + "");
		return result;
	}
}
