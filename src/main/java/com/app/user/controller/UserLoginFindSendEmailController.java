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
import com.app.vo.UserVO;

public class UserLoginFindSendEmailController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		HttpSession session = req.getSession();
		MailSend ms = new MailSend();
		MakeCode mc = new MakeCode();
		UserDAO userDAO = new UserDAO();
		UserVO userVO = new UserVO();
		String userName = req.getParameter("userName");
		String userEmail = req.getParameter("userEmail");
		String mailCode = mc.codeSix();
		userVO.setUserName(userName);
		userVO.setUserEmail(userEmail);
		
		
		String userId = userDAO.selectIdByEmailAndName(userVO);
		System.out.println(userId);
		if(userId == null) {
//			존재 안함
			session.setAttribute("mailCode", "false");
		}else {
			ms.sendMail(userEmail,mailCode);
			System.out.println(mailCode);
			session.setAttribute("mailCode", mailCode);
			session.setAttribute("userId", userId);
		}

		session.setAttribute("userName", userName);
		session.setAttribute("userEmail", userEmail);
		
		result.setRedirect(true);
		result.setPath("login-find-id.user");
		return result;
	}

}
