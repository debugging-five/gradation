package com.app.mypage.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.MailDAO;
import com.app.vo.MailVO;

@WebServlet("/mypage/mypage-post-list.mypage")
public class MypagePostListController extends HttpServlet {
    private MailDAO mailDAO = new MailDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long loginUserId = (Long) req.getSession().getAttribute("userId");
        List<MailVO> receivedMails = mailDAO.findReceivedMails(loginUserId);

        req.setAttribute("receivedMails", receivedMails);
        req.getRequestDispatcher("/mypage/mypage-post-list.jsp").forward(req, resp);
    }
}

