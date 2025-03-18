package com.app.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.UserDAO;

public class UserIdCheckController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		UserDAO userDAO = new UserDAO();
		
		System.out.println(req.getParameter("userId"));
		System.out.println(userDAO.idCheck(req.getParameter("userId")));
//		userDAO.idCheck(req.getParameter("userId"));
//		result.setPath("join-main.user?idCheck=true");
//		
		result.setPath("join-main.user?idCheck=true");
		result.setRedirect(true);
		return result;
	}

}
