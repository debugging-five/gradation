package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;

public class MypageDeleteIdController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		HttpSession session = req.getSession();
		if(session.getAttribute("loginUser") == null) {
			result.setPath("../main/main.main");
			result.setRedirect(true);
			return result;
		}
		
		result.setPath("mypage-delete-id.jsp");
		return result;
	}

}
