package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.dao.MailDAO;
import com.app.vo.MailVO;

public class MypageSendPostContentModifyController implements com.app.Action {
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	    String id = req.getParameter("id"); // 원본 쪽지 ID

	    MailDAO mailDAO = new MailDAO();
	    MailVO mail = mailDAO.findById(Long.parseLong(id)); // 보낸 유저의 ID, 이메일, 이름 등 포함

	    // 수신자 이메일은 원본 쪽지를 보낸 사람의 이메일
	    req.setAttribute("receiveUserEmail", mail.getSendUserEmail());
	    req.setAttribute("sendUserId", mail.getSendUserId()); // 이거 추가해야 <input hidden name="sendUserId">에 들어감

	    Result result = new Result();
	    result.setPath("/mypage/mypage-send-post-content-modify.jsp");
	    return result;
	}

}
