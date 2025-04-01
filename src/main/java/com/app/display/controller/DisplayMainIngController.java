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

        // 1. 페이징 처리
        String pageParam = req.getParameter("page");
        int page = 1;
        if (pageParam != null && !pageParam.isEmpty()) {
            page = Integer.parseInt(pageParam);
        }

        int pageSize = 12;
        int totalItems = 50; // ★ 실제 총 게시물 수 조회 시 DB에서 가져오는 게 좋음
        int totalPages = (int) Math.ceil((double) totalItems / pageSize);
        int startIndex = (page - 1) * pageSize;

        // 2. DAO 호출해서 DB에서 이미지 정보 가져오기
        ArtDAO artDAO = new ArtDAO();
        List<ArtDTO> artList = artDAO.selectDisplayList(startIndex, pageSize);

        // 3. JSP에 데이터 전달
        req.setAttribute("currentPage", page);
        req.setAttribute("totalPages", totalPages);
        req.setAttribute("artList", artList); // ★ JSP에서 ${artList}로 꺼낼 수 있게 됨

        // 4. 경로 지정
        result.setPath("display-main-ing.jsp");
        result.setRedirect(false);
        return result;
    }
}
