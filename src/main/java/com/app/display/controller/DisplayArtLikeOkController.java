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
import com.app.vo.ArtLikeVO;
import com.app.vo.UserVO;

public class DisplayArtLikeOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		
//		로그인 검사
		HttpSession session = req.getSession();
		if(session.getAttribute("loginUser") == null) {
			result.setPath("../login/login-main.user");
			result.setRedirect(true);
			return result;
		}
		
		
		ArtPostDTO artPostDTO = new ArtPostDTO();
		String userEmail = (String) req.getSession().getAttribute("loginUser");
		ArtDAO artDAO = new ArtDAO();
		UserDAO userDAO = new UserDAO();
		
//		파라미터 뽑기
		String artIdParam = req.getParameter("artId");
		Long artId = Long.parseLong(artIdParam);
        UserVO userVO = userDAO.selectUserByEmail(userEmail);
        if (userVO == null) {
            result.setRedirect(true);
            result.setPath("display-form.display?error=userNotFound");
            return result;
        }



		
//		user이메일 가져오기
		artPostDTO.setUserEmail(userEmail);
//		ArtDTO형성
		artPostDTO.setArtId(artId);
		artPostDTO.setUserId(userVO.getId());

		
		if(artDAO.selectUserLike(artPostDTO) == 1) {
			artDAO.deleteArtLike(artPostDTO);
		}else {
			artDAO.insertArtLike(artPostDTO);
		}

//		artLike 파라미터에 get파라미터로 뽑앗 dto에 넣어야 함, 그리고 dto를 매개벼ㄴ수 삼아서 0이나 1이 나오면 그걸로 판단해서 이프문돌리고 이프문에서 0일때 인서트 1일때 딜리트

		
        result.setRedirect(true);
        result.setPath("display-detail.display?artId=" + artId);
		return result;
	}

}
