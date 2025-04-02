package com.app.exhibition.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.ExhibitionDAO;
import com.app.dto.MajorDTO;


public class UniversityExhibitionFormWriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MajorDTO majorDTO = new MajorDTO();
		ExhibitionDAO exhibitionDAO = new ExhibitionDAO();

		majorDTO.setUniversityName(req.getParameter("universityName"));
		majorDTO.setMajorName(req.getParameter("majorName"));
		majorDTO.setUniversityLocation(req.getParameter("universityLocation"));
		majorDTO.setUniversityHomepage(req.getParameter("universityHomepage"));
	    String dateStr = req.getParameter("universityExhibitionDate"); // "2025-04-02"
	    
	    if (dateStr != null && !dateStr.isEmpty()) { // 날짜 값이 비어있는지 체크
	        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

	        try {
	            Date utilDate = formatter.parse(dateStr); // java.util.Date 변환
	            java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime()); // java.sql.Date 변환
	            majorDTO.setUniversityExhibitionDate(sqlDate); // DTO에 저장
	        } catch (ParseException e) {
	            e.printStackTrace(); // 변환 실패 시 오류 출력
	        }
	    } else {
	        System.out.println("날짜 값이 없습니다."); // 디버깅용 출력
	    }
	    
	    exhibitionDAO.insertExhibition(majorDTO);
	    exhibitionDAO.insertMajor(majorDTO);
	    exhibitionDAO.insertUniversity(majorDTO);
		
		result.setRedirect(true);
		result.setPath("mypage-service-center-qna-list.mypage");
		return result;
	}

}
