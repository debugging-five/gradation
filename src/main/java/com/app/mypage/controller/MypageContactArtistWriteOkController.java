package com.app.mypage.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MypageDAO;
import com.app.dto.MailDTO;
import com.app.vo.MailVO;

public class MypageContactArtistWriteOkController implements Action {
    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        Result result = new Result();
//        HttpSession session = req.getSession();
        MypageDAO mypageDAO = new MypageDAO();
        MailDTO mailDTO = new MailDTO();

        
//        mailVO.setMailTitle(req.getParameter("mailTitle"));
//        mailVO.setMailContents(req.getParameter("mailContents"));
//        System.out.println(req.getParameter("mailTitle"));
//        System.out.println(req.getParameter("mailContents"));
        
        mailDTO.setReceiveUserId(Long.parseLong(req.getParameter("receiveUserId")));
        if (mailDTO.getSendUserId() == null) {
            mailDTO.setSendUserId(0L);
        }
//        mailDTO.setrId(Long.parseLong(req.getParameter("rId")));
//        mailDTO.setrUserName(req.getParameter("rUserName"));
        mailDTO.setMailTitle(req.getParameter("mailTitle"));
        mailDTO.setMailContents(req.getParameter("mailContents"));

        System.out.println("receiveUserId 값 확인: " + mailDTO.getReceiveUserId());
        
        mypageDAO.insertMail(mailDTO);

        result.setRedirect(true);
        result.setPath(req.getContextPath() + "/mypage-contact-artist-list.mypage");

        return result;
    }
}
