package com.app.mypage.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.dao.MypageDAO;
import com.app.dao.UserDAO;
import com.app.dto.MailDTO;
import com.app.vo.MailVO;
import com.app.vo.UserVO;

public class MypageContactArtistListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	    Result result = new Result();
	    MypageDAO mypageDAO = new MypageDAO(); 
	    UserDAO userDAO = new UserDAO();
	    HttpSession session = req.getSession();
	    MailVO mailVO = new MailVO();
	    
//	    JSONArray mails = new JSONArray();
//		mypageDAO.selectMailAll().stream().map(JSONObject::new).forEach(mails::put);
	    
	    List<MailDTO> mailList = mypageDAO.selectMailAll();
//	    System.out.println(mailList);
//	    System.out.println(mails);
	    
		req.setAttribute("mailList", mailList); 
		result.setPath("mypage-contact-artist-list.jsp");
	    
	    return result;
	}
}