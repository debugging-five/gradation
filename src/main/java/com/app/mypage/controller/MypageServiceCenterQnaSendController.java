package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;

public class MypageServiceCenterQnaSendController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();

//		로그인검증
		HttpSession session = req.getSession();
		String userEmail = (String)session.getAttribute("loginUser");
		if(userEmail == null) {
			result.setPath("../login/login-main.user");
			result.setRedirect(true);
			return result;
		}
		
		result.setPath("mypage-service-center-qna-send.jsp");
		return result;
	}

}
