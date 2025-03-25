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

public class UserLoginNewPasswordOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		UserDAO userDAO = new UserDAO();
		UserVO userVO = new UserVO();
		System.out.println(req.getParameter("userId"));
		System.out.println(req.getParameter("userPassword"));
		userVO.setUserId(req.getParameter("userId"));
		userVO.setUserPassword(req.getParameter("userPassword"));
		
		HttpSession session = req.getSession();
//		세션정보초기화
		session.invalidate();
		
		userDAO.changePassword(userVO);
		result.setRedirect(true);
		result.setPath("login-new-password.user?changeComplete=true");
		return result;
	}

}
