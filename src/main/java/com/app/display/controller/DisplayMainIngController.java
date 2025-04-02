package com.app.display.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.ArtDAO;
import com.app.dto.ArtDTO;

public class DisplayMainIngController implements Action {

	@Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        Result result = new Result();

        int page = 1;
        int pageSize = 15;

        String pageParam = req.getParameter("page");
        String category = req.getParameter("category");

        if (pageParam != null && !pageParam.isEmpty()) {
            page = Integer.parseInt(pageParam);
        }

        ArtDAO artDAO = new ArtDAO();
        int startIndex = (page - 1) * pageSize;

        // 여기서 선언
        int totalItems;
        List<ArtDTO> artList;

        // 카테고리 필터가 있을 경우
        if (category != null && !category.isEmpty()) {
            totalItems = artDAO.getFilteredDisplayCount(category);
            artList = artDAO.selectDisplayListFiltered(startIndex, pageSize, category);
        } else {
            // 전체 조회
            totalItems = artDAO.getTotalDisplayCount(); // ★ artMapper에 selectDisplayList 쿼리 존재해야 함
            artList = artDAO.selectDisplayList(startIndex, pageSize);
        }

        int totalPages = (int) Math.ceil((double) totalItems / pageSize);

        req.setAttribute("artList", artList);
        req.setAttribute("currentPage", page);
        req.setAttribute("totalPages", totalPages);
        req.setAttribute("category", category); // JSP에서 유지용

        result.setPath("display-main-ing.jsp");
        result.setRedirect(false);
        return result;
	}

}
