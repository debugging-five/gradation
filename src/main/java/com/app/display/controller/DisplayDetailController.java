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
		ArtPostDTO artPostDTO = new ArtPostDTO();
		ArtVO artVO = new ArtVO();
		ArtDAO artDAO = new ArtDAO();
		
//		로그인 검사
		HttpSession session = req.getSession();
		if(session.getAttribute("loginUser") == null) {
			result.setPath("../login/login-main.user");
			result.setRedirect(true);
			return result;
		}
		
// 		로그인된 유저 정보 가져오기
        String userEmail = (String) req.getSession().getAttribute("loginUser");
        UserVO userVO = userDAO.selectUserByEmail(userEmail);
        
//      내용 출력
        req.setAttribute("artImgName", artPostDTO.getArtImgName());
        req.setAttribute("artImgPath", artPostDTO.getArtImgPath());
        req.setAttribute("artTitle", artPostDTO.getArtTitle());
        req.setAttribute("userName", userVO.getUserName());
        req.setAttribute("artDate", artPostDTO.getArtDate());
        req.setAttribute("artMaterial", artPostDTO.getArtMaterial());
        req.setAttribute("artSize", artPostDTO.getArtSize());
        req.setAttribute("artCategory", artPostDTO.getArtCategory());
        req.setAttribute("artDescription", artPostDTO.getArtDescription());
        
        // DB에 저장 후, 생성된 artId 가져오기
//        int artId = artDAO.selectAll(artVO);

//		result.setPath("display-detail.display?artId=" + artId);
		return result;
	}

}
