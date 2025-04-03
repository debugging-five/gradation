package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.UserDAO;

public class MypageServiceCenterQnaDeleteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		
		HttpSession session = req.getSession();
		String userEmail = (String)session.getAttribute("loginUser");
		if(userEmail == null) {
			result.setPath("../login/login-main.user");
			result.setRedirect(true);
			return result;
		}
		String qnaId = req.getParameter("contentId");

//		유효한 qna검증
		if(qnaId == null) {
			result.setPath("mypage-service-center-qna-list.mypage");
			result.setRedirect(true);
			return result;
		}
		
		UserDAO userDAO = new UserDAO();
		userDAO.deleteQna(Long.parseLong(qnaId));
		
		result.setRedirect(true);
		result.setPath("mypage-service-center-qna-list.mypage");
		return result;
	}

}
