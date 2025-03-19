package com.app.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.user.controller.UserEmailCheckController;
import com.app.user.controller.UserEmailCheckOkController;
import com.app.user.controller.UserIdCheckController;
import com.app.user.controller.UserJoinOkController;
import com.app.user.controller.UserLoginController;
import com.app.user.controller.UserLoginOkController;
import com.app.user.controller.UserjoinController;

public class UserFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8;");
			
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("join/join-main")) {
			result = new UserjoinController().execute(req, resp);
		}else if(target.equals("join/join-ok")) {
			result = new UserJoinOkController().execute(req, resp);
		}else if(target.equals("join/id-check")) {
			result = new UserIdCheckController().execute(req, resp);
		}else if(target.equals("join/email-check")) {
			result = new UserEmailCheckController().execute(req, resp);
		}else if(target.equals("join/email-check-verify")) {
			result = new UserEmailCheckOkController().execute(req, resp);
		}else if(target.equals("login/login-main")) {
			result = new UserLoginController().execute(req, resp);
		}else if(target.equals("login/login-ok")) {
			result = new UserLoginOkController().execute(req, resp);
		}else if(target.equals("logout-ok")) {
		}else {
//			error 404 site
		}
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
