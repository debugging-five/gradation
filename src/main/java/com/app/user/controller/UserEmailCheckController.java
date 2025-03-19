package com.app.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;

public class UserEmailCheckController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MailSend mailSend = new MailSend();
		
		System.out.println(req.getParameter("userEmail"));
//		mailSend.sendMail(req.getParameter("userEmail"), null);
		
		result.setRedirect(true);
		result.setPath("join-main.user");
		return result;
	}

}
