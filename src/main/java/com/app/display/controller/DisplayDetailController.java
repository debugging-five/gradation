package com.app.display.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.ArtDAO;
import com.app.dao.UserDAO;
import com.app.dto.ArtPostDTO;
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
		String artDate = new SimpleDateFormat("yyyy").format(artPostDTO.getArtDate());
		
		
		
//		로그인 검사
		HttpSession session = req.getSession();
		if(session.getAttribute("loginUser") == null) {
			result.setPath("../login/login-main.user");
			result.setRedirect(true);
			return result;
		}
//		유효한 작품 검증
		if(artIdParam == null) {
			result.setPath("../display/display-main");
			result.setRedirect(true);
			return result;
		}
		
		
// 		로그인된 유저 정보 가져오기
        String userEmail = (String) req.getSession().getAttribute("loginUser");
        UserVO userVO = userDAO.selectUserByEmail(userEmail);
        
//      내용 출력
        req.setAttribute("artTitle", artPostDTO.getArtTitle());
        req.setAttribute("userName", userVO.getUserName());
        req.setAttribute("artDate", artDate);
        req.setAttribute("artMaterial", artPostDTO.getArtMaterial());
        req.setAttribute("artSize", artPostDTO.getArtSize());
        req.setAttribute("artCategory", artPostDTO.getArtCategory());
        req.setAttribute("artDescription", artPostDTO.getArtDescription());
        
//      좋아요 추가
        
        
//  	좋아요 카운트 추가
        int likeCount = artDAO.selectArtLikeCount(artId);  // DB에서 좋아요 개수 가져옴
        req.setAttribute("likeCount", likeCount);          // JSP에서 사용할 변수 설정
        
//      이미지 링크
        String artImg = "../" + artPostDTO.getArtImgPath() + artPostDTO.getArtImgName();
        req.setAttribute("artImg", artImg);
       
        
//      반환되는 페이지
		result.setPath("display-detail.jsp");
		return result;
	}

}
