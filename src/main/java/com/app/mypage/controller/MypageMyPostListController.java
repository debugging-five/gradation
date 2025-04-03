package com.app.mypage.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.dao.MailDAO;
import com.app.vo.MailVO;

@WebServlet("/mypage/mypage-my-post-list.mypage")
public class MypageMyPostListController extends HttpServlet {
    private MailDAO mailDAO = new MailDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long loginUserId = (Long) req.getSession().getAttribute("userId");
        List<MailVO> sentMails = mailDAO.findSentMails(loginUserId);

        req.setAttribute("sentMails", sentMails); 
        req.getRequestDispatcher("/mypage/mypage-my-post-list.jsp").forward(req, resp);
    }
}
