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

        String mailTitle = req.getParameter("mailTitle");
        String mailContents = req.getParameter("mailContents");
        String receiveUserEmail = req.getParameter("receiveUserEmail");

        // 안전하게 userId 가져오기
        String sendUserIdStr = req.getParameter("sendUserId");
        Long userId = null;
        if (sendUserIdStr != null && !sendUserIdStr.trim().isEmpty()) {
            userId = Long.parseLong(sendUserIdStr.trim());
        } else {
            // 필요하다면 디버깅용 로그 출력
            System.out.println("sendUserId 값이 없음!");
            throw new IllegalArgumentException("보내는 사용자 ID가 유효하지 않습니다.");
        }

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
