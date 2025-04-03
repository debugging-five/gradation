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
	private String getLocalizedCategory(String category) {
	    switch (category) {
	        case "korean": return "한국화";
	        case "painting": return "회화";
	        case "sculpture": return "조각";
	        case "craft": return "공예";
	        case "architecture": return "건축";
	        case "calligraphy": return "서예";
	        default: return null;
	    }
	}

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        Result result = new Result();

        int page = 1;
        String pageParam = req.getParameter("page");
        if (pageParam != null && !pageParam.isEmpty()) {
            try {
                page = Integer.parseInt(pageParam);
            } catch (NumberFormatException e) {
                page = 1;
            }
        }

        int pageSize = 15;
        int startIndex = (page - 1) * pageSize;

        String categoryParam = req.getParameter("category");
        String category = getLocalizedCategory(categoryParam);
        boolean isFiltered = category != null && !category.isEmpty();

        ArtDAO artDAO = new ArtDAO();

        int totalItems;
        List<ArtDTO> artList;

        if (isFiltered) {
            totalItems = artDAO.getFilteredDisplayCount(category);
            artList = artDAO.selectDisplayListFiltered(startIndex, pageSize, category);
        } else {
            totalItems = artDAO.getTotalDisplayCount();
            artList = artDAO.selectDisplayList(startIndex, pageSize);
        }

        int totalPages = (int) Math.ceil((double) totalItems / pageSize);

        req.setAttribute("artList", artList);
        req.setAttribute("currentPage", page);
        req.setAttribute("totalPages", totalPages);
        req.setAttribute("category", categoryParam); 

        result.setPath("display-main-ing.jsp");
        result.setRedirect(false);
        return result;
    }
}
