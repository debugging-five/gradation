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

        String pageParam = req.getParameter("page");
        int page = 1;
        if (pageParam != null && !pageParam.isEmpty()) {
            page = Integer.parseInt(pageParam);
        }

        int pageSize = 12;
        int totalItems = 50;
        int totalPages = (int) Math.ceil((double) totalItems / pageSize);
        int startIndex = (page - 1) * pageSize;

        ArtDAO artDAO = new ArtDAO();
        List<ArtDTO> artList = artDAO.selectDisplayList(startIndex, pageSize);
        req.setAttribute("artList", artList);
        
        req.setAttribute("currentPage", page);
        req.setAttribute("totalPages", totalPages);
        req.setAttribute("artList", artList);
        result.setPath("display-main-ing.jsp");
        result.setRedirect(false);
        return result;
    }
}
