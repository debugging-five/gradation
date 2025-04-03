package com.app.mypage.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.UserDAO;
import com.app.vo.FaqVO;

public class MypageServiceCenterFaqListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		
		UserDAO userDAO = new UserDAO();
		
		List<FaqVO> faqList = userDAO.selectFaqAll();
		req.setAttribute("faqList", faqList);
		result.setPath("mypage-service-center-faq-list.jsp");
		return result;
	}

}
