package com.app.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.UserDAO;
import com.app.vo.UserVO;

public class UserJoinOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		UserDAO userDAO = new UserDAO();
		UserVO userVO = new UserVO();
		HttpSession session = req.getSession();
		
		userVO.setUserId(req.getParameter("userId"));
		userVO.setUserPassword(req.getParameter("userPassword"));
		userVO.setUserName(req.getParameter("userName"));
		userVO.setUserNickName(req.getParameter("userNickname"));
		userVO.setUserPhone(req.getParameter("userPhone"));
		userVO.setUserEmail(req.getParameter("userEmail"));
		if(req.getParameter("agreement").equals("on")) {
			userVO.setUserSnsOk(1);
			userVO.setUserMailOk(1);
			userVO.setUserAgreementOk(1);			
		}else {
			userVO.setUserSnsOk(0);
			userVO.setUserMailOk(0);
			userVO.setUserAgreementOk(0);	
		}
		
		userDAO.insert(userVO);
		
		session.setAttribute("isComplete", "true");
		
		result.setRedirect(true);
		result.setPath("join-main.user");
		
		return result;
	}

}
