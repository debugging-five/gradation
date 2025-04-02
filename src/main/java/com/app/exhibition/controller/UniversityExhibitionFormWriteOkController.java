package com.app.exhibition.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.ExhibitionDAO;
import com.app.dto.MajorDTO;
import com.app.vo.GradationExhibitionVO;
import com.app.vo.MajorVO;
import com.app.vo.UniversityExhibitionVO;
import com.app.vo.UserVO;

public class UniversityExhibitionFormWriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MajorDTO majorDTO = new MajorDTO();

		majorDTO.setUniversityName(req.getParameter("universityName"));
		majorDTO.setMajorName(req.getParameter("majorName"));
		majorDTO.setUniversityExhibitionDate(req.getParameter("universityExhibitionDate"));
		majorDTO.setUniversityLocation(req.getParameter("universityLocation"));
		majorDTO.setUniversityHomepage(req.getParameter("universityHomepage"));
		
		result.setRedirect(true);
		result.setPath("mypage-service-center-qna-list.mypage");
		return result;
	}

}
