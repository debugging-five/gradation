package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.MailDAO;

public class MypagePostDeleteOkController implements Action {
    private MailDAO mailDAO = new MailDAO();

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long mailId = Long.parseLong(req.getParameter("id"));

        mailDAO.delete(mailId);

        Result result = new Result();
        result.setPath("mypage-post-list.mypage"); 
        result.setRedirect(true);
        return result;
    }
}
