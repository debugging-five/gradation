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
import com.app.vo.UserVO;

public class DisplayReplyUpdateController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		HttpSession session = req.getSession();
		UserDAO userDAO = new UserDAO();
		String userEmail = (String)session.getAttribute("loginUser");
		ArtDAO artDAO = new ArtDAO();
		ArtPostDTO artPostDTO = new ArtPostDTO();
		
//		로그인 검사
		if(userEmail == null) {
			result.setPath("../login/login-main.user");
			result.setRedirect(true);
			return result;
		}
		
//		파라미터 뽑기
		String artIdParam = req.getParameter("artId");
		Long artId = Long.parseLong(artIdParam);
        UserVO userVO = userDAO.selectUserByEmail(userEmail);
        if (userVO == null) {
            result.setRedirect(true);
            result.setPath("display-form.display?error=userNotFound");
            return result;
        }
        
//      userId 뽑기
		artPostDTO.setUserId(userVO.getId());
		
//		artPostId뽑기
		artPostDTO.setArtPostId(artDAO.selectArtById(artId).getArtPostId());
		
//		replyId 뽑기
//		artPostDTO.setArtPostId(artDAO.selectArtById(artId).getReplyId());
		
//		replyContents 뽑기
		artPostDTO.setReplyContents(req.getParameter("updateReplyContents"));
		
//		쿼리 날리기
		artDAO.updateReply(artPostDTO);
		
		
//		보내는 주소
		result.setRedirect(true);
		result.setPath("display-detail.display?artId=" + artId);
		return result;
	}
}
