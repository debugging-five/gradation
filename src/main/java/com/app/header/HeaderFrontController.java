package com.app.header;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.header.controller.HeaderDisplayMainController;
import com.app.header.controller.HeaderExhibitionMainController;
import com.app.header.controller.HeaderLoginMainController;
import com.app.header.controller.HeaderMainController;
import com.app.header.controller.HeaderUpcyclingMainController;
import com.app.user.controller.UserjoinController;

public class HeaderFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8;");
		
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		
		
		if(target.equals("main/main")) {
			result = new HeaderMainController().execute(req, resp);
		}else if(target.equals("display/display-main")) {
			result = new HeaderDisplayMainController().execute(req, resp);
		}else if(target.equals("exhibition/exhibition-main")) {
			result = new HeaderExhibitionMainController().execute(req, resp);
		}else if(target.equals("upcycle/upcycle-detail")) {
			result = new HeaderUpcyclingMainController().execute(req, resp);
		}else if(target.equals("login/login-main")) {
			result = new HeaderLoginMainController().execute(req, resp);
		}else {
	//			전부 404
		}
		
		
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
