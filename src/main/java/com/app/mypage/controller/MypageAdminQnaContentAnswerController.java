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

public class MypageAdminQnaContentAnswerController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();
		Long id = Long.parseLong(req.getParameter("id"));
//		System.out.println(id);
		Optional<QnaDTO> qnaDTO = adminDAO.selectQnaById(id);
		
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
		
		QnaDTO qna = qnaDTO.orElseThrow(() -> {
			throw new RuntimeException("QNA not found");
		}); 
				
		qna.setDateData(new SimpleDateFormat("yy.MM.dd").format(qna.getQnaTime())); 
		
		System.out.println(qna);
		
		req.setAttribute("qna", qna);
		result.setPath("mypage-admin-qna-content.jsp");
		return result;
	}

}


















