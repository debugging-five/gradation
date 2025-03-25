package com.app.exhibition.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;

public class OurExhibitionPastTwentyTwoController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		String pageParam = req.getParameter("page");
        int page = 1;
        if (pageParam != null && !pageParam.isEmpty()) {
            page = Integer.parseInt(pageParam);
        }

        int pageSize = 12;

        int totalItems = 50;

        int totalPages = (int) Math.ceil((double) totalItems / pageSize);

        int startIndex = (page - 1) * pageSize;
        int endIndex = Math.min(startIndex + pageSize, totalItems);

        req.setAttribute("currentPage", page);
        req.setAttribute("totalPages", totalPages);
        req.setAttribute("startIndex", startIndex);
        req.setAttribute("endIndex", endIndex);
        result.setRedirect(false);
		result.setPath("our-exhibition-past-twenty-two.jsp");
		return result;
	}
}
