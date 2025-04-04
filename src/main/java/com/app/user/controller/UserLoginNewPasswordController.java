package com.app.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;

public class UserLoginNewPasswordController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		HttpSession session = req.getSession();
		String changePassword = (String)session.getAttribute("changePassword");
		if(changePassword != null) {
			result.setPath("login-new-password.jsp");
			return result;			
		}else {
			result.setRedirect(true);
			result.setPath("../main/main.main");
			return result;	
		}
	}

}
