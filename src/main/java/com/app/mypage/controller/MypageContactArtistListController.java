package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.dao.MypageDAO;

public class MypageContactArtistListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MypageDAO mypageDAO = new MypageDAO();
		
		JSONArray mails = new JSONArray();
		mypageDAO.selectMailAll().stream().map(JSONObject::new).forEach(mails::put);
		
		System.out.println(mails.toString());
		
		req.setAttribute("mails", mails);
		result.setPath("mypage-contact-artist-list.jsp");
		return result;
	}

}
