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
import com.app.user.controller.UserLoginFindIdController;
import com.app.user.controller.UserLoginFindIdOkController;
import com.app.user.controller.UserLoginFindPasswordController;
import com.app.user.controller.UserLoginFindPasswordSendEmailController;
import com.app.user.controller.UserLoginFindSendEmailController;
import com.app.user.controller.UserLoginNewPasswordController;
import com.app.user.controller.UserLoginNewPasswordOkController;
import com.app.user.controller.UserLoginOkController;
import com.app.user.controller.UserLogoutController;
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
		}else if(target.equals("login/login-find-id")) {
			result = new UserLoginFindIdController().execute(req, resp);
		}else if(target.equals("login/login-find-send-email")) {
			result = new UserLoginFindSendEmailController().execute(req, resp);
		}else if(target.equals("login/login-find-id-ok")) {
			result = new UserLoginFindIdOkController().execute(req, resp);
		}else if(target.equals("login/login-find-password")) {
			result = new UserLoginFindPasswordController().execute(req, resp);
		}else if(target.equals("login/login-find-password-send-email")) {
			result = new UserLoginFindPasswordSendEmailController().execute(req, resp);
		}else if(target.equals("login/login-new-password")) {
			result = new UserLoginNewPasswordController().execute(req, resp);
		}else if(target.equals("login/login-new-password-ok")) {
			result = new UserLoginNewPasswordOkController().execute(req, resp);
		}else if(target.equals("logout/logout")) {
			result = new UserLogoutController().execute(req, resp);
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
