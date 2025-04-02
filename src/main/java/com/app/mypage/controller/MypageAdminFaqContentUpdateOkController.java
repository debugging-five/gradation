package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;
import com.app.vo.FaqVO;

public class MypageAdminFaqContentUpdateOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();
		FaqVO faqVO = new FaqVO();
		
		faqVO.setId(Long.parseLong(req.getParameter("id")));
		faqVO.setFaqTitle(req.getParameter("faqTitle"));
		faqVO.setFaqContent(req.getParameter("faqContent"));
		faqVO.setFaqCategory(req.getParameter("faqCategory"));
		
		Long id = faqVO.getId();
		
		result.setRedirect(true);
		result.setPath("mypage-admin-faq-content.mypage?id=" + id);
		adminDAO.updateFaq(faqVO);
		
		return result;
	}

}
