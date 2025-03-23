package com.app.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.UserDAO;
import com.app.logic.MailSend;
import com.app.logic.MakeCode;

public class UserLoginFindSendEmailController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		HttpSession session = req.getSession();
		MailSend ms = new MailSend();
		MakeCode mc = new MakeCode();
		UserDAO userDAO = new UserDAO();
		String userName = req.getParameter("userName");
		String userEmail = req.getParameter("userEmail");
		String mailCode = mc.codeSix();
		
//		이메일과 이름 유저 존재여부
		session.setAttribute("mailCode", mailCode);
		
		ms.sendMail(userEmail,mailCode);
//		존재 안함
		session.setAttribute("mailCode", "false");
		session.setAttribute("userName", userName);
		session.setAttribute("userEmail", userEmail);
		
		result.setRedirect(true);
		result.setPath("login-id-find.user");
		return result;
	}

}
