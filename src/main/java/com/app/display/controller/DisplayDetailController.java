package com.app.display.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.ArtDAO;
import com.app.dao.UserDAO;
import com.app.dto.ArtPostDTO;
import com.app.vo.ArtVO;
import com.app.vo.UserVO;

public class DisplayDetailController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		UserDAO userDAO = new UserDAO();
		ArtVO artVO = new ArtVO();
		ArtDAO artDAO = new ArtDAO();
		String artIdParam = req.getParameter("artId");
		Long artId = Long.parseLong(artIdParam);
		ArtPostDTO artPostDTO = artDAO.selectArtById(artId);
		
		
//		사진 출력은 imgPath에서 req.imgName 으로 출력한다.
		
		
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
        req.setAttribute("artDate", artPostDTO.getArtDate());
        req.setAttribute("artMaterial", artPostDTO.getArtMaterial());
        req.setAttribute("artSize", artPostDTO.getArtSize());
        req.setAttribute("artCategory", artPostDTO.getArtCategory());
        req.setAttribute("artDescription", artPostDTO.getArtDescription());
         
        String artImg = "../" + artPostDTO.getArtImgPath() + artPostDTO.getArtImgName();
        req.setAttribute("artImg", artImg);
       
        
		result.setPath("display-detail.jsp");
		return result;
	}

}
