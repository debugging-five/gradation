package com.app.mypage.controller;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MypageDAO;
import com.app.vo.MailVO;

public class MypageContactArtistWriteOkController implements Action {

	@Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        Result result = new Result();
        MypageDAO mypageDAO = new MypageDAO();

        // 📌 [DEBUG] 요청 데이터 확인
        String receiveUserName = req.getParameter("receiveUserName");
        String mailTitle = req.getParameter("mailTitle");
        String mailContents = req.getParameter("mailContents");

        System.out.println("📌 [DEBUG] 백엔드에서 받은 receiveUserName: " + receiveUserName);
        System.out.println("📌 [DEBUG] 메일 제목: " + mailTitle);
        System.out.println("📌 [DEBUG] 메일 내용: " + mailContents);

        // 📌 [DEBUG] 세션에서 userId 가져오기
        HttpSession session = req.getSession(false); // 기존 세션 가져오기 (없으면 null 반환)
        Long sendUserId = (session != null) ? (Long) session.getAttribute("userId") : null;

        System.out.println("📌 [DEBUG] 보낸 사용자 ID(sendUserId): " + sendUserId);

        // 📌 [ERROR] 세션이 없거나 userId가 null이면 에러 처리
        if (sendUserId == null) {
            System.out.println("❌ [ERROR] 세션이 없거나 userId가 존재하지 않습니다.");
            result.setRedirect(true);
            result.setPath("../login/login-main.jsp"); // 로그인 페이지로 리다이렉트
            return result;
        }

        // 📌 [DB] 받는 유저 ID 조회
        Long receiveUserId = mypageDAO.getUserIdByName(receiveUserName);
        if (receiveUserId == null) {
            throw new IllegalArgumentException("❌ [ERROR] 받는 사용자가 존재하지 않습니다.");
        }

        // 📌 [DEBUG] 받는 사용자 ID 확인
        System.out.println("📌 [DEBUG] 받는 사용자 ID(receiveUserId): " + receiveUserId);

        // 📌 MailVO 객체 생성 및 데이터 설정
        MailVO mailVO = new MailVO();
        mailVO.setMailTitle(mailTitle);
        mailVO.setMailContents(mailContents);
        mailVO.setMailSendTime(new Timestamp(System.currentTimeMillis()));
        mailVO.setMailOpenOk(0);
        mailVO.setSendUserId(sendUserId);
        mailVO.setReceiveUserId(receiveUserId);

        // 📌 [DB] 메일 저장
        mypageDAO.insertMail(mailVO);

        // 📌 성공 시, 마이페이지 메일 목록으로 이동
        result.setRedirect(true);
        result.setPath("mypage-contact-artist-list.mypage");
        return result;
    }
}
