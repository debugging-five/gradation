package com.app.user.controller;

import java.io.IOException;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		System.out.println(req.getParameter("userEmail"));
		mailSend.sendMail(req.getParameter("userEmail"), code);
		
		result.setRedirect(true);
		result.setPath("join-main.user?code="+code);
		return result;
	}

}
