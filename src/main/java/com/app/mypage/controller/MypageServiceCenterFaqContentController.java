package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.UserDAO;
import com.app.vo.FaqVO;

public class MypageServiceCenterFaqContentController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		UserDAO userDAO = new UserDAO();
		Long faqId = Long.parseLong(req.getParameter("faqId"));
		FaqVO faq = userDAO.selectFaqById(faqId);
		if(faq == null) {
			result.setPath("mypage-service-center-faq-list.mypage");
			result.setRedirect(true);
			return result;
		}
		req.setAttribute("faq", faq);
		result.setPath("mypage-service-center-faq-content.jsp");
		return result;
	}

}
