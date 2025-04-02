package com.app.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;

public class UserLoginFindSendEmailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		HttpSession session = req.getSession();
		String userName = req.getParameter("userName");
		String userEmail = req.getParameter("userEmail");
		String mailCode = req.getParameter("mailCode");
		String userCode = req.getParameter("userCode");
		
		if(mailCode.equals(userCode)) {
			req.setAttribute("isComplete", "true");
			session.setAttribute("changePassword", "true");
		}else {
			req.setAttribute("isComplete", "false");
		}
		session.setAttribute("userName", userName);
		session.setAttribute("userEmail", userEmail);
		session.setAttribute("userCode", userCode);
		
		result.setRedirect(true);
		result.setPath("login-find-id.user");
		return result;
	}

}
