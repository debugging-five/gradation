package com.app.art.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.ArtDAO;
import com.app.dto.ArtPostDTO;
import com.app.vo.ArtVO;

public class ArtUploadController implements Action {

    private ArtDAO artDAO = new ArtDAO(); // DAO 객체 생성

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        // 클라이언트에서 입력받은 데이터를 ArtPostDTO 객체로 받는다.
        String artTitle = req.getParameter("artTitle");
        String artCategory = req.getParameter("artCategory");
        String artMaterial = req.getParameter("artMaterial");
        String artSize = req.getParameter("artSize");
        String artDescription = req.getParameter("artDescription");
        Long userId = (Long) req.getSession().getAttribute("userId");  // 세션에서 사용자 ID 가져오기

        // ArtPostDTO 객체 생성
        ArtPostDTO artPostDTO = new ArtPostDTO();
        artPostDTO.setArtTitle(artTitle);
        artPostDTO.setArtCategoty(artCategory);
        artPostDTO.setArtMeterial(artMaterial);
        artPostDTO.setArtSize(artSize);
        artPostDTO.setArtDescription(artDescription);
        artPostDTO.setUserId(userId);

        // ArtPostDTO를 ArtVO로 변환
        ArtVO artVO = new ArtVO();
        artVO.setArtTitle(artPostDTO.getArtTitle());
        artVO.setArtCategoty(artPostDTO.getArtCategoty());
        artVO.setArtMeterial(artPostDTO.getArtMeterial());
        artVO.setArtSize(artPostDTO.getArtSize());
        artVO.setArtDescription(artPostDTO.getArtDescription());
        artVO.setUserId(artPostDTO.getUserId());

        // DAO를 이용해 데이터베이스에 작품 업로드
        artDAO.insertArtForExhibition(artVO);  // ArtVO 객체를 전달

        // 성공적으로 등록된 후, 성공 페이지로 리다이렉트
        Result result = new Result();
        result.setPath("art-upload-success.jsp"); // 업로드 성공 페이지로 리다이렉트
        
        return result;
    }
}
