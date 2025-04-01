package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.UserDAO;
import com.app.vo.UserVO;

public class MypageModifyController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		HttpSession session = req.getSession();
		String userEmail = (String)session.getAttribute("loginUser");
		UserVO userVO = null;
		UserDAO userDAO = new UserDAO();
		
		if(userEmail == null) {
			result.setPath("../login/login-main.user");
			result.setRedirect(true);
			return result;
		}
		userVO = userDAO.selectUserByEmail(userEmail);			
		req.setAttribute("userIdentification", userVO.getUserIdentification());

		req.setAttribute("userNickname", req.getParameter("userNickname") == null ? userVO.getUserNickname() : req.getParameter("userNickname"));
		req.setAttribute("userName", req.getParameter("userName") == null ? userVO.getUserName() : req.getParameter("userName"));
		req.setAttribute("userEmail", req.getParameter("userEmail") == null ? userVO.getUserEmail() : req.getParameter("userEmail"));
		
		req.setAttribute("userPhone", req.getParameter("userPhone") == null ? userVO.getUserPhone() : req.getParameter("userPhone"));
		req.setAttribute("userCode", req.getParameter("userCode"));
		req.setAttribute("userAddress", req.getParameter("userAddress") == null ? userVO.getUserAddress() : req.getParameter("userAddress"));
		req.setAttribute("userDetailAddress", req.getParameter("userDetailAddress") == null ? userVO.getUserDetailAddress() : req.getParameter("userDetailAddress"));
		
		result.setPath("mypage-modify.jsp");
		return result;
	}

}
