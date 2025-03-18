package com.app.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.UserDAO;
import com.app.vo.UserVO;

public class UserIdCheckController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		UserDAO userDAO = new UserDAO();
		String tempId = req.getParameter("userId");
		String tempUrl = "join-main.user?tempId="+ tempId + "&idCheck=";
		
		if(userDAO.idCheck(tempId) == 1){
			result.setPath(tempUrl+"false");						
		}else {
			result.setPath(tempUrl+"true");			
		}
		result.setRedirect(true);
		return result;
	}

}
