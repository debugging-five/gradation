package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.MypageDAO;
import com.app.dao.UserDAO;
import com.app.dto.UniversityDTO;

public class MypageContactArtistUpdateController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MypageDAO mypageDAO = new MypageDAO();

		
		
		Long id = Long.parseLong(req.getParameter("id"));
//		req.setAttribute("mypage", mypageDAO.select(id).orElseThrow(() -> {
//			throw new RuntimeException("ProductUpdateController user not found");
//		}));
		
//		작가와 연락 내역 수정
//		작가 연락 수정 페이지 필요
		result.setPath("mypage-contact-artist-update.jsp");
		
		return result;

	}
	
	
	

}
