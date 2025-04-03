package com.app.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.UserDAO;
import com.app.vo.QnaVO;
import com.app.vo.UserVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MypageServiceCenterQnaSendOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		
//		로그인검증
		HttpSession session = req.getSession();
		String userEmail = (String)session.getAttribute("loginUser");
		if(userEmail == null) {
			result.setPath("../login/login-main.user");
			result.setRedirect(true);
			return result;
		}
		
		UserDAO userDAO = new UserDAO();
		UserVO userVO = userDAO.selectUserByEmail(userEmail);
		
		QnaVO qnaVO = new QnaVO();
		
		String filePath = "/assets/images/mypage/qna-img";
		String directory = req.getServletContext().getRealPath(filePath);
		int sizeLimit = 20 * 1024 * 1024;
		
//		폴더가 없으면 만들기
//		File dir = new File(directory);
//		if(!dir.exists()) {
//			dir.mkdirs();
//		}
		
		MultipartRequest multi = new MultipartRequest(req, directory, sizeLimit, "UTF-8", new DefaultFileRenamePolicy());
		
		qnaVO.setQnaImgName(multi.getFilesystemName("qnaImgName"));
		qnaVO.setQnaImgPath(filePath);
		qnaVO.setQnaCategory(multi.getParameter("qnaCategory"));
		qnaVO.setQnaContent(multi.getParameter("qnaContent"));
		qnaVO.setQnaTitle(multi.getParameter("qnaTitle"));
		qnaVO.setUserId(userVO.getId());
		
		userDAO.insertQna(qnaVO);
		
		result.setRedirect(true);
		result.setPath("mypage-service-center-qna-list.mypage");
		return result;
	}

}
