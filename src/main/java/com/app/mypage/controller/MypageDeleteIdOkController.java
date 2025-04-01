package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.UserDAO;

public class MypageDeleteIdOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		UserDAO userDAO = new UserDAO();
		HttpSession session = req.getSession();
		String loginUser = (String)session.getAttribute("loginUser");
		
		userDAO.deleteUser(loginUser);
		
		result.setPath("mypage-delete-id.mypage?complete=true");
		result.setRedirect(true);
		return result;
	}

}
