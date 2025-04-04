package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.UserDAO;
import com.app.dto.QnaDTO;
import com.app.vo.QnaVO;
import com.app.vo.UserVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MypageServiceCenterQnaUpdateOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		HttpSession session = req.getSession();
		
		String userEmail = (String)session.getAttribute("loginUser");
		if(userEmail == null) {
			result.setPath("../login/login-main.user");
			result.setRedirect(true);
			return result;
		}
		
		String filePath = "/assets/images/mypage/qna-img";
		String directory = req.getServletContext().getRealPath(filePath);
		int sizeLimit = 20 * 1024 * 1024;
		
//		폴더가 없으면 만들기
//		File dir = new File(directory);
//		if(!dir.exists()) {
//			dir.mkdirs();
//		}
		UserDAO userDAO = new UserDAO();
		
		QnaVO qnaVO = userDAO.selectQnaById(Long.parseLong(req.getParameter("contentId")));
		
		MultipartRequest multi = new MultipartRequest(req, directory, sizeLimit, "UTF-8", new DefaultFileRenamePolicy());
		qnaVO.setQnaImgPath(filePath);
		qnaVO.setQnaCategory(multi.getParameter("qnaCategory"));
		qnaVO.setQnaContent(multi.getParameter("qnaContent"));
		qnaVO.setQnaTitle(multi.getParameter("qnaTitle"));
		String QnaImgName = multi.getFilesystemName("qnaImgName");
		if(QnaImgName != null) {
			qnaVO.setQnaImgName(QnaImgName);
		}
		
		userDAO.updateQna(qnaVO);
		
		result.setRedirect(true);
		result.setPath("mypage-service-center-qna-content.mypage");
		return result;
	}

}
