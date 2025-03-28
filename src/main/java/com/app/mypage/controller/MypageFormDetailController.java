package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;

public class MypageFormDetailController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		String type = req.getParameter("type");
		String id = req.getParameter("id");
		
        if("upcycling".equals(type)) {
            result.setPath("/mypage/upcycling-detail.jsp");
        } else if("display".equals(type)) {
            result.setPath("mypage-admin-form-display.jsp");
        } else if("exhibition".equals(type)) {
            result.setPath("/mypage/exhibition-detail.jsp");
        } else {
//        	404
        }
		
        
		return result;
	}

}
