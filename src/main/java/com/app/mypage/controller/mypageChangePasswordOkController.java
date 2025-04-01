package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.UserDAO;

public class mypageChangePasswordOkController implements Action{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		UserDAO userDAO = new UserDAO();
		HttpSession session = req.getSession();
		String userEmail = (String)session.getAttribute("loginUser");
		String userPassword = userDAO.selectPassword(userEmail);
		String inputPassword = req.getParameter("password");
		if(inputPassword.equals(userPassword)) {
			session.setAttribute("changePassword", "true");
			result.setPath("../login/login-new-password.user");
			result.setRedirect(true);
			return result;
		}else {
			result.setPath("mypage-change-password.mypage?check=false");
			result.setRedirect(true);
			return result;
		}
		
		
		
		
	}

}
