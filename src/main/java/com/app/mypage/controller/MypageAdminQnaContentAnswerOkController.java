package com.app.mypage.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;
import com.app.dao.UserDAO;
import com.app.dto.QnaDTO;
import com.app.vo.UserVO;

public class MypageAdminQnaContentAnswerOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();
		QnaDTO qnaDTO = new QnaDTO();
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
		
		qnaDTO.setQnaId(Long.parseLong(req.getParameter("id")));
		qnaDTO.setQnaAnswerContent(req.getParameter("qnaAnswerContent"));
		qnaDTO.setQnaAnswerTitle("답변 완료");
		
		adminDAO.insertQnaAnswer(qnaDTO);
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/mypage-admin-qna-list-completed.mypage");
		return result;
	}

}


















