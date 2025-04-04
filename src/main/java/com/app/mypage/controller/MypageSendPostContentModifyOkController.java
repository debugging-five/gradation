package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MailDAO;
import com.app.vo.MailVO;

public class MypageSendPostContentModifyOkController implements Action {

	private final MailDAO mailDAO;

    public MypageSendPostContentModifyOkController() {
        this.mailDAO = new MailDAO();
    }

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        HttpSession session = req.getSession();

        String userEmail = (String) session.getAttribute("userEmail");

     // fallback: 세션이 null일 경우 쿼리 파라미터에서 이메일 받기
     if (userEmail == null) {
         userEmail = req.getParameter("sendUserEmail");
     }
     System.out.println("사용할 userEmail: " + userEmail);

     Long userId = mailDAO.findUserIdByEmail(userEmail);
//     System.out.println("userId 역조회 결과: " + userId);

        String mailTitle = req.getParameter("mailTitle");
        String mailContents = req.getParameter("mailContents");
        String receiveUserEmail = req.getParameter("receiveUserEmail");

        MailVO mailVO = new MailVO();
        mailVO.setMailTitle(mailTitle);
        mailVO.setMailContents(mailContents);
        mailVO.setSendUserId(userId); 
        mailVO.setReceiveUserEmail(receiveUserEmail);

        mailDAO.insertByEmail(mailVO);

        Result result = new Result();
        result.setPath(req.getContextPath() + "/mypage/mypage-post-list.mypage");
        result.setRedirect(true);
        return result;
    }


}