package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;

public class MypageAdminFaqListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();
		
		JSONArray faqs = new JSONArray();
		adminDAO.selectFaqAll().stream().map(JSONObject::new).forEach(faqs::put);
		
		req.setAttribute("faqs", faqs);
		result.setPath("mypage-admin-faq-list.jsp");
		return result;
	}

}
