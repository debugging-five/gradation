package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.MailDAO;
import com.app.vo.MailVO;

@WebServlet("/mypage/mypage-post-content.mypage")
public class MypagePostContentController extends HttpServlet {
    private MailDAO mailDAO = new MailDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long mailId = Long.parseLong(req.getParameter("id"));
        MailVO mail = mailDAO.findById(mailId); 

        req.setAttribute("mail", mail);
        req.getRequestDispatcher("/mypage/mypage-post-content.jsp").forward(req, resp);
    }
}

