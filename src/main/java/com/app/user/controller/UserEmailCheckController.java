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

public class UserEmailCheckController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MailSend mailSend = new MailSend();
		MakeCode makeCode = new MakeCode();
		UserDAO userDAO = new UserDAO();
		HttpSession session = req.getSession();
		
		String checkId = req.getParameter("checkId");
		
		String code = makeCode.codeSix();
		String userId = req.getParameter("userId");
		String userPassword = req.getParameter("userPassword");
		String checkUserPassword = req.getParameter("checkUserPassword");
		String userName = req.getParameter("userName");
		String userNickname = req.getParameter("userNickname");
		String userPhone = req.getParameter("userPhone");
		String userEmail = req.getParameter("userEmail");
		String checkUserEmail = req.getParameter("checkUserEmail");
		
//		System.out.println(req.getParameter("userEmail"));
		
		if(userDAO.emailCheck(userEmail) == 1){
//			이메일이 이미 존재할 때
			session.setAttribute("code", "");
			session.setAttribute("emailAlready", "true");
		}else {
//			이메일이 없을 때
			session.setAttribute("emailAlready", "false");
			mailSend.sendMail(req.getParameter("userEmail"), code);
			System.out.println(code);
			session.setAttribute("code", code);
		}
		
				
		session.setAttribute("checkId", checkId);
		session.setAttribute("userId", userId);
		session.setAttribute("userPassword", userPassword);
		session.setAttribute("checkUserPassword", checkUserPassword);
		session.setAttribute("userName", userName);
		session.setAttribute("userNickname", userNickname);
		session.setAttribute("userPhone", userPhone);
		session.setAttribute("userEmail", userEmail);
		session.setAttribute("checkUserEmail", checkUserEmail);
		
		result.setRedirect(true);
		result.setPath("join-main.user");
		
		return result;
	}

}
