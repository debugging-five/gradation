package com.app.exhibition;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.exhibition.controller.GradationExhibitionController;
import com.app.exhibition.controller.OurExhibitionPastTwentyFourController;
import com.app.exhibition.controller.OurExhibitionPastTwentyThreeController;
import com.app.exhibition.controller.OurExhibitionPastTwentyTwoController;
import com.app.exhibition.controller.UniversityExhibitionController;
import com.app.exhibition.controller.UniversityExhibitionFormWriteController;

public class ExhibitionFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8;");
		
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("exhibition/university-exhibition-main")) {
			result = new UniversityExhibitionController().execute(req, resp);
		}else if(target.equals("exhibition/university-exhibition-form")) {
			result = new UniversityExhibitionFormWriteController().execute(req, resp);
		}else if(target.equals("exhibition/gradation-exhibition-main")) {
			result = new GradationExhibitionController().execute(req, resp);
		}else if(target.equals("exhibition/our-exhibition-past-twenty-two")) {
			result = new OurExhibitionPastTwentyTwoController().execute(req, resp);
		}else if(target.equals("exhibition/our-exhibition-past-twenty-three")) {
			result = new OurExhibitionPastTwentyThreeController().execute(req, resp);
		}else if(target.equals("exhibition/our-exhibition-past-twenty-four")) {
			result = new OurExhibitionPastTwentyFourController().execute(req, resp);
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
