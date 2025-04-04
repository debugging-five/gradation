package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MypageDAO;
import com.app.dao.UserDAO;
import com.app.dto.MailDTO;
import com.app.dto.UniversityDTO;
import com.app.vo.UserVO;

public class MypageContactArtistUpdateController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MypageDAO mypageDAO = new MypageDAO();
		UserDAO userDAO = new UserDAO();
		HttpSession session = req.getSession();
		String userEmail = (String) session.getAttribute("loginUser");
        UserVO sendUserVO = userDAO.selectUserByEmail(userEmail);
        System.out.println("sendUserVO 확인! " + sendUserVO);
        
        
        req.setAttribute("sendUserVO", sendUserVO);

		Long id = Long.parseLong(req.getParameter("id"));
		System.out.println("id 확인! " + id);
		
		
		req.setAttribute("mail", mypageDAO.selectMail(id).orElseThrow(() -> {
			throw new RuntimeException("MailUpdateController user not found");
		}));
		

		result.setPath("mypage-contact-artist-update.jsp");
		return result;
	}
	
}
