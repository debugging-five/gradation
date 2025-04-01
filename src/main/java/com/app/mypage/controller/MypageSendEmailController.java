package com.app.mypage.controller;

import java.io.IOException;
import java.net.URLEncoder;

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
		
		String path = "userNickname=" + (req.getParameter("userNickname") == null ? "" : URLEncoder.encode(req.getParameter("userNickname"), "UTF-8")) + 
				"&userName=" + (req.getParameter("userName") == null ? "" : URLEncoder.encode(req.getParameter("userName"), "UTF-8")) +
				"&userPhone=" + (req.getParameter("userPhone") == null ? "" : URLEncoder.encode(req.getParameter("userPhone"), "UTF-8")) +
				"&userEmail=" + (userEmail == null ? "" : URLEncoder.encode(userEmail, "UTF-8") +
				"&userCode=" + (req.getParameter("userCode") == null ? "" : URLEncoder.encode(req.getParameter("userCode"), "UTF-8")) +
				"&userAddress=" + (req.getParameter("userAddress") == null ? "" : URLEncoder.encode(req.getParameter("userAddress"), "UTF-8")) +
				"&userDetailAddress=" + (req.getParameter("userDetailAddress") == null ? "" : URLEncoder.encode(req.getParameter("userDetailAddress"), "UTF-8")));
		
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
		result.setPath("mypage-modify.mypage?" + path);
		return result;
	}

}
