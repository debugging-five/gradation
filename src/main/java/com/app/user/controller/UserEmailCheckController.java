package com.app.user.controller;

import java.io.IOException;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.logic.MailSend;
import com.app.logic.MakeCode;

public class UserEmailCheckController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MailSend mailSend = new MailSend();
		MakeCode makeCode = new MakeCode();
		String code = makeCode.codeSix();
		String userId = req.getParameter("userId");
		String userPassword = req.getParameter("userPassword");
		String checkUserPassword = req.getParameter("checkUserPassword");
		String userName = req.getParameter("userName");
		String userNickname = req.getParameter("userNickname");
		String userPhone = req.getParameter("userPhone");
		String userEmail = req.getParameter("userEmail");
		String checkUserEmail = req.getParameter("checkUserEmail");
		HttpSession session = req.getSession();
		
		System.out.println(req.getParameter("userEmail"));
		mailSend.sendMail(req.getParameter("userEmail"), code);
		
		result.setRedirect(true);
		
		
		
		session.setAttribute("userId", userId);
		session.setAttribute("userPassword", userPassword);
		session.setAttribute("checkUserPassword", checkUserPassword);
		session.setAttribute("userName", userName);
		session.setAttribute("userNickname", userNickname);
		session.setAttribute("userPhone", userPhone);
		session.setAttribute("userEmail", userEmail);
		session.setAttribute("checkUserEmail", checkUserEmail);
		return result;
	}

}
