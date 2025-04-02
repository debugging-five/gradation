package com.app.exhibition.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.ExhibitionDAO;
import com.app.dto.UniversityExhibitionDTO;

public class UniversityExhibitionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		ExhibitionDAO exhibitionDAO = new ExhibitionDAO();
		
		List<UniversityExhibitionDTO> exhibitionList = exhibitionDAO.selectUniversityExhibitionList(); // 메서드 호출
		
		req.setAttribute(null, exhibitionDAO);
		
		 req.setAttribute("exhibitionList", exhibitionList);
		
		result.setPath("university-exhibition-main.jsp");
		
		
		return result;
	}
}
