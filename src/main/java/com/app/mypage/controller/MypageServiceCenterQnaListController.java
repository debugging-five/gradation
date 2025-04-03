package com.app.mypage.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.UserDAO;
import com.app.dto.QnaDTO;

public class MypageServiceCenterQnaListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		UserDAO userDAO = new UserDAO();
		
		HttpSession session = req.getSession();
		String userEmail = (String)session.getAttribute("loginUser");
		if(userEmail == null) {
			result.setPath("../login/login-main.user");
			result.setRedirect(true);
			return result;
		}
		
		List<QnaDTO> qnaList = userDAO.selectQna(userEmail);

		for(QnaDTO qna : qnaList) {
			qna.setDateData(new SimpleDateFormat("yy.MM.dd").format(qna.getQnaTime()));
			
			if(qna.getQnaAnswerTitle() == null) {
				qna.setQnaStatus("답변대기");
			}else {
				qna.setQnaStatus("답변완료");
			}
		}
		
		req.setAttribute("qnaList", qnaList);
		
		result.setPath("mypage-service-center-qna-list.jsp");
		return result;
	}

}
