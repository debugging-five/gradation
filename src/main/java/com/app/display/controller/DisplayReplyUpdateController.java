package com.app.display.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;

public class DisplayReplyUpdateController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		HttpSession session = req.getSession();
		String userEmail = (String)session.getAttribute("loginUser");
		
//		로그인 검사
		if(userEmail == null) {
			result.setPath("../login/login-main.user");
			result.setRedirect(true);
			return result;
		}
		
		return result;
	}
}
