package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;

public class MypageAdminFaqContentDeleteController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();
		
		Long id = Long.parseLong(req.getParameter("id"));
		adminDAO.deleteFaq(id);
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/mypage/mypage-admin-faq-list.mypage");
		return result;
	}

}
