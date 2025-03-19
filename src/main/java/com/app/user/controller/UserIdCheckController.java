package com.app.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.UserDAO;

public class UserIdCheckController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		UserDAO userDAO = new UserDAO();
		String userId = req.getParameter("userId");
		String userPassword = req.getParameter("userPassword");
		String checkUserPassword = req.getParameter("checkUserPassword");
		String userName = req.getParameter("userName");
		String userNickname = req.getParameter("userNickname");
		String userPhone = req.getParameter("userPhone");
		String userEmail = req.getParameter("userEmail");
		String checkUserEmail = req.getParameter("checkUserEmail");
		HttpSession session = req.getSession();
		
		if(userDAO.idCheck(userId) == 1){
//			아이디가 없을 때
			session.setAttribute("checkId", false);
			System.out.println("있어");
		}else {
//			아이디가 있을 때
			session.setAttribute("checkId", true);
			System.out.println("없어");
		}
		
		session.setAttribute("userId", userId);
		session.setAttribute("userPassword", userPassword);
		session.setAttribute("checkUserPassword", checkUserPassword);
		session.setAttribute("userName", userName);
		session.setAttribute("userNickname", userNickname);
		session.setAttribute("userPhone", userPhone);
		session.setAttribute("userEmail", userEmail);
		session.setAttribute("checkUserEmail", checkUserEmail);
		
		result.setPath("join-main.user");
		result.setRedirect(true);
		return result;
	}

}
