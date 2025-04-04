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
import com.app.vo.UserVO;

public class MypageContactArtistUpdateOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MypageDAO mypageDAO = new MypageDAO();
		MailDTO mailDTO = new MailDTO();
		UserDAO userDAO = new UserDAO();
		HttpSession session = req.getSession();
		String userEmail = (String) session.getAttribute("loginUser");
        UserVO sendUserVO = userDAO.selectUserByEmail(userEmail);
        System.out.println(sendUserVO);
        
        req.setAttribute("sendUserVO", sendUserVO);
		
		mailDTO.setId(Long.parseLong(req.getParameter("id")));
		mailDTO.setrUserName(req.getParameter("rUserName"));
		mailDTO.setMailTitle(req.getParameter("mailTitle"));
		mailDTO.setMailContents(req.getParameter("mailContents"));
        
		Long id = mailDTO.getId();
		
		result.setRedirect(true);
		result.setPath("mypage-contact-artist-detail.mypage?id=" + id);
		mypageDAO.updateMail(mailDTO);
		
		return result;
	}

}
