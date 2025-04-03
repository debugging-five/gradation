package com.app.mypage.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.MailDAO;
import com.app.vo.MailVO;

public class MypageMyPostListController implements Action {

    private MailDAO mailDAO = new MailDAO();

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	Long loginUserId = 1L; //테스트
//    	Long loginUserId = (Long) req.getSession().getAttribute("userId");
        List<MailVO> sentMails = mailDAO.findSentMails(loginUserId);  // 보낸 쪽지 목록 가져오기

        req.setAttribute("sentMails", sentMails);

        Result result = new Result();
        result.setPath("/mypage/mypage-my-post-list.jsp");
        return result;
    }
}
