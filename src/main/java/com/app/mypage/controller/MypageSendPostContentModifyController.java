package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.dao.MailDAO;
import com.app.vo.MailVO;

public class MypageSendPostContentModifyController implements com.app.Action {
	 @Override
	    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	        String id = req.getParameter("id"); 

	        MailDAO mailDAO = new MailDAO();
	        MailVO mail = mailDAO.findById(Long.parseLong(id));
	        
	        System.out.println(mail.getSendUserEmail());

	        req.setAttribute("receiveUserEmail", mail.getSendUserEmail());
	        req.setAttribute("mailId", mail.getId()); 
	        Result result = new Result();
	        result.setPath("/mypage/mypage-send-post-content-modify.jsp");
	        return result;
	    }

}
