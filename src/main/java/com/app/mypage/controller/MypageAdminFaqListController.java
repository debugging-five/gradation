package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;
import com.app.dao.UserDAO;
import com.app.vo.UserVO;

public class MypageAdminFaqListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();
		
		JSONArray faqs = new JSONArray();
		adminDAO.selectFaqAll().stream().map(JSONObject::new).forEach(faqs::put);
		
		UserDAO userDAO = new UserDAO();   
		// 로그인 여부
		HttpSession session = req.getSession();
		if(session.getAttribute("loginUser") == null) {
		   result.setPath("../login/login-main.user");
		   result.setRedirect(true);
		   return result;
		}

		// 관리자 여부
		String userEmail = (String)session.getAttribute("loginUser");
		UserVO userVO = userDAO.selectUserByEmail(userEmail);   
		if(userVO.getUserAdminOk() == 0) {
		   result.setPath("../login/login-main.user");
		   result.setRedirect(true);
		   return result;
		}
		
		req.setAttribute("faqs", faqs);
		result.setPath("mypage-admin-faq-list.jsp");
		return result;
	}

}
