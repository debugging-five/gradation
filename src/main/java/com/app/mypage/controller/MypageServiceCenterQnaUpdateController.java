package com.app.mypage.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.UserDAO;
import com.app.dto.QnaDTO;

public class MypageServiceCenterQnaUpdateController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		String qnaId = req.getParameter("contentId");
		
//		로그인검증
		HttpSession session = req.getSession();
		String userEmail = (String)session.getAttribute("loginUser");
		QnaDTO qnaDTO = new QnaDTO();
		UserDAO userDAO = new UserDAO();
		if(userEmail == null) {
			result.setPath("../login/login-main.user");
			result.setRedirect(true);
			return result;
		}
		
//		유효한 qna검증
		if(qnaId == null) {
			result.setPath("mypage-service-center-qna-list.mypage");
			result.setRedirect(true);
			return result;
		}
		qnaDTO.setQnaId(Long.parseLong(qnaId));
		qnaDTO.setUserEmail(userEmail);
		
		QnaDTO qna = userDAO.selectOneQna(qnaDTO);
		
		qna.setDateData(new SimpleDateFormat("yy.MM.dd").format(qna.getQnaTime()));
		
		if(qna.getQnaImgName() == null) {
			qna.setQnaImgName("");
		}
		if(qna.getQnaImgPath() == null) {
			qna.setQnaImgPath("");
		}
		
		System.out.println(qna);
		req.setAttribute("qna", qna);
		
		
		result.setPath("mypage-service-center-qna-update.jsp");
		return result;
	}

}
