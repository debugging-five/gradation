package com.app.mypage.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.UserDAO;
import com.app.vo.UserVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MypageUniversityCertificationOkController implements Action{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		HttpSession session = req.getSession();
		UserDAO userDAO = new UserDAO();
		UserVO userVO = userDAO.selectUserByEmail((String)session.getAttribute("loginUser"));
		
		String filePath = "/assets/images/user/certification";
		String directory = req.getServletContext().getRealPath(filePath);
		System.out.println(directory);
		int sizeLimit = 20 * 1024 * 1024; // 100mb
		
//		폴더가 없으면 만들기
		File dir = new File(directory);
		if(!dir.exists()) {
			dir.mkdirs();
		}
		MultipartRequest multi = new MultipartRequest(req, directory, sizeLimit, "UTF-8", new DefaultFileRenamePolicy());
		userVO.setUserUniversityStatus("승인대기");
		userVO.setUserMajorImgName(multi.getParameter("userMajorImgName"));
		userVO.setUserMajorImgPath(filePath);
		userDAO.updateUserUniversityStatus(userVO);
		
		result.setPath("mypage-university-certification.jsp?certification=true");
		return result;
	}
	
}
