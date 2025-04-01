package com.app.mypage.controller;

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

public class MypageSendEmailController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MailSend mailSend = new MailSend();
		MakeCode makeCode = new MakeCode();
		String mailCode = makeCode.codeSix();
		UserDAO userDAO = new UserDAO();
		HttpSession session = req.getSession();
		String userEmail = req.getParameter("userEmail");
		
		String path = "mypage-modify.mypage?userNickname=" + req.getParameter("userNickname") + 
				"&userName=" + req.getParameter("userName") +
				"&userPhone=" + req.getParameter("userPhone") +
				"&userEmail=" + userEmail +
				"&userCode=" + req.getParameter("userCode") +
				"&userAddress=" + req.getParameter("userAddress") +
				"&userDetailAddress=" + req.getParameter("userDetailAddress");
				
		if(userDAO.emailCheck(userEmail) == 1){
//			이메일이 이미 존재할 때
			session.setAttribute("mailCode", false);
		}else {
//			이메일이 없을 때
			mailSend.sendMail(userEmail, mailCode);
			System.out.println(mailCode);
			session.setAttribute("mailCode", mailCode);
		}
		
		result.setRedirect(true);
		result.setPath(path);
		return result;
	}

}
