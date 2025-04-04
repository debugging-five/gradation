package com.app.display.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.UserDAO;
import com.app.vo.UserVO;

public class DisplayFormCommingSoonController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		UserDAO userDAO = new UserDAO();
		
		//로그인 검사
		HttpSession session = req.getSession();
		if(session.getAttribute("loginUser") == null) {
			result.setPath("../login/login-main.user");
			result.setRedirect(true);
			return result;
		}

		// 로그인된 유저 정보 가져오기
        String userEmail = (String) req.getSession().getAttribute("loginUser");
        UserVO userVO = userDAO.selectUserByEmail(userEmail);
        
        req.setAttribute("userName", userVO.getUserName());
		
		
	    result.setPath("display-form-comming-soon.jsp");
		return result;
	}

}
