package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.MypageDAO;
import com.app.dto.MailDTO;

public class MypageContactArtistWriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MailDTO mailDTO = new MailDTO();
		MypageDAO mypageDAO = new MypageDAO();
		
		mailDTO.setrUserName(req.getParameter("rUserName"));
		mailDTO.setMailTitle(req.getParameter("mailTitle"));
		mailDTO.setMailContents(req.getParameter("mailContents"));
		
//		mypageDAO.insert(mailDTO);
		
		result.setRedirect(true);
		result.setPath("mypage-contact-artist-list.mypage");
		return result;
	}
}
