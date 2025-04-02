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
import com.app.dao.UserDAO;
import com.app.dto.MailDTO;
import com.app.vo.MailVO;
import com.app.vo.UserVO;

public class MypageContactArtistWriteOkController implements Action {
    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        Result result = new Result();
        MypageDAO mypageDAO = new MypageDAO();
        MailDTO mailDTO = new MailDTO();
        UserDAO userDAO = new UserDAO();
        HttpSession session = req.getSession();
        String userEmail = (String) session.getAttribute("loginUser");
        UserVO sendUserVO = userDAO.selectUserByEmail(userEmail);
//        System.out.println(sendUserVO);
        UserVO receiveUserVO = userDAO.selectUserByEmail(req.getParameter("rUserEmail"));
        System.out.println(req.getParameter("rUserEmail"));
        System.out.println(receiveUserVO);
//        System.out.println(sendUserVO);
       
        
        
        mailDTO.setReceiveUserId(receiveUserVO.getId());
        mailDTO.setSendUserId(sendUserVO.getId());
        mailDTO.setMailTitle(req.getParameter("mailTitle"));
        mailDTO.setMailContents(req.getParameter("mailContents"));

        
        mypageDAO.insertMail(mailDTO);

        result.setRedirect(true);
        result.setPath(req.getContextPath() + "/mypage-contact-artist-list.mypage");

        return result;
    }
}
