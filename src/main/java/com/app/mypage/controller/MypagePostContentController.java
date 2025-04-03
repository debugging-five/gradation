package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.MailDAO;
import com.app.vo.MailVO;

public class MypagePostContentController implements Action {
    private MailDAO mailDAO = new MailDAO();

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long mailId = Long.parseLong(req.getParameter("id"));
        System.out.println("쪽지 ID: " + mailId); 
       
        MailVO mail = mailDAO.findById(mailId);  
        System.out.println("mail 내용: " + mail);
        req.setAttribute("mail", mail);

        Result result = new Result();
        result.setPath("/mypage/mypage-post-content.jsp");
        return result;
    }
}
