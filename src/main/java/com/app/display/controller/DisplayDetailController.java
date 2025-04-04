package com.app.display.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.ArtDAO;
import com.app.dao.UserDAO;
import com.app.dto.ArtPostDTO;
import com.app.dto.QnaDTO;
import com.app.vo.UserVO;

public class DisplayDetailController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		UserDAO userDAO = new UserDAO();
		ArtDAO artDAO = new ArtDAO();
		
		String artIdParam = req.getParameter("artId");
		Long artId = Long.parseLong(artIdParam);
		ArtPostDTO artPostDTO = artDAO.selectArtById(artId);
		
		Long artPostId = artPostDTO.getArtPostId();
//		String artPostIdParam = req.getParameter("artPostId");
		List<ArtPostDTO> artPostDTOs = artDAO.selectReplyList(artPostId);
		
		String artDate = new SimpleDateFormat("yyyy").format(artPostDTO.getArtDate());
		
		
//		유효한 작품 검증
		if(artIdParam == null) {
			result.setPath("../display/display-main");
			result.setRedirect(true);
			return result;
		}
		
	
        
//      내용 출력
        req.setAttribute("artTitle", artPostDTO.getArtTitle());
        req.setAttribute("userName", artPostDTO.getUserName());
        req.setAttribute("artDate", artDate);
        req.setAttribute("artMaterial", artPostDTO.getArtMaterial());
        req.setAttribute("artSize", artPostDTO.getArtSize());
        req.setAttribute("artCategory", artPostDTO.getArtCategory());
        req.setAttribute("artDescription", artPostDTO.getArtDescription());
        req.setAttribute("artId", artIdParam);
//        req.setAttribute("artPostId", artPostIdParam);
        
//  	좋아요 카운트 추가
        int likeCount = artDAO.selectArtLikeCount(artId);  // DB에서 좋아요 개수 가져옴
        req.setAttribute("likeCount", likeCount);          // JSP에서 사용할 변수 설정
        
//      이미지 링크
        String artImg = "../" + artPostDTO.getArtImgPath() + artPostDTO.getArtImgName();
        req.setAttribute("artImg", artImg);
        
        String userImg = "../" + artPostDTO.getUserImgPath() + artPostDTO.getUserImgName();
        req.setAttribute("userImg", userImg);
        
        
        List<ArtPostDTO> replyList = artDAO.selectReplyList(artPostId);
//      댓글리스트
        req.setAttribute("userImgName", artPostDTO.getUserImgName());
        req.setAttribute("userImgPath", artPostDTO.getUserImgPath());
        req.setAttribute("userNickname", artPostDTO.getUserNickname());
        req.setAttribute("replyDate", artPostDTO.getReplyDate());
        req.setAttribute("replyContents", artPostDTO.getReplyContents());
        req.setAttribute("userId", artPostDTO.getUserId());
       
        req.setAttribute("replyList", replyList);
        
//      반환되는 페이지
		result.setPath("display-detail.jsp");
		return result;
	}

}
