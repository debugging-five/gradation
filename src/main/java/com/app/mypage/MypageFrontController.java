package com.app.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.mypage.controller.MypageAdminFaqContentController;
import com.app.mypage.controller.MypageAdminFaqListController;
import com.app.mypage.controller.MypageAdminFaqRegisterController;
import com.app.mypage.controller.MypageAdminFormApprovedController;
import com.app.mypage.controller.MypageAdminFormNotApprovedController;
import com.app.mypage.controller.MypageAdminQnaContentController;
import com.app.mypage.controller.MypageAdminQnaContentCompletedController;
import com.app.mypage.controller.MypageAdminQnaListCompletedController;
import com.app.mypage.controller.MypageAdminQnaListWaitingController;
import com.app.mypage.controller.MypageAdminUserManageController;
import com.app.mypage.controller.MypageArtLikeListControllerController;
import com.app.mypage.controller.MypageChangePasswordController;
import com.app.mypage.controller.MypageCommentsListController;
import com.app.mypage.controller.MypageContactArtistDetailController;
import com.app.mypage.controller.MypageContactListController;
import com.app.mypage.controller.MypageContactWriteController;
import com.app.mypage.controller.MypageExhibitionLikeListController;
import com.app.mypage.controller.MypageMainController;
import com.app.mypage.controller.MypageModifyController;
import com.app.mypage.controller.MypageMyPostListController;
import com.app.mypage.controller.MypagePostListController;

public class MypageFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8;");
		
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("mypage/mypage-main")) {
			result = new MypageMainController().execute(req, resp);
		}else if(target.equals("mypage/mypage-modify")) {
			result = new MypageModifyController().execute(req, resp);
		}else if(target.equals("mypage/mypage-contact-artist-list")) {
			result = new MypageContactListController().execute(req, resp);
		}else if(target.equals("mypage/mypage-contact-artist-detail")) {
			result = new MypageContactArtistDetailController().execute(req, resp);
		}else if(target.equals("mypage/mypage-contact-artist-write")) {
			result = new MypageContactWriteController().execute(req, resp);
		}else if(target.equals("mypage/mypage-comments-list")) {
			result = new MypageCommentsListController().execute(req, resp);
		}else if(target.equals("mypage/mypage-change-password")) {
			result = new MypageChangePasswordController().execute(req, resp);
		}else if(target.equals("mypage/mypage-art-like-list")) {
			result = new MypageArtLikeListControllerController().execute(req, resp);
		}else if(target.equals("mypage/mypage-exhibition-like-list")) {
			result = new MypageExhibitionLikeListController().execute(req, resp);
		}else if(target.equals("mypage/mypage-admin-qna-list-waiting")) {
			result = new MypageAdminQnaListWaitingController().execute(req, resp);
		}else if(target.equals("mypage/mypage-admin-qna-list-completed")) {
			result = new MypageAdminQnaListCompletedController().execute(req, resp);
		}else if(target.equals("mypage/mypage-admin-form-not-approved")) {
			result = new MypageAdminFormNotApprovedController().execute(req, resp);
		}else if(target.equals("mypage/mypage-admin-form-approved")) {
			result = new MypageAdminFormApprovedController().execute(req, resp);
		}else if(target.equals("mypage/mypage-post-list")) {
			result = new MypagePostListController().execute(req, resp);
		}else if(target.equals("mypage/mypage-my-post-list")) {
			result = new MypageMyPostListController().execute(req, resp);
		}else if(target.equals("mypage/mypage-admin-faq-list")) {
			result = new MypageAdminFaqListController().execute(req, resp);
		}else if(target.equals("mypage/mypage-admin-qna-content")) {
			result = new MypageAdminQnaContentController().execute(req, resp);
		}else if(target.equals("mypage/mypage-admin-qna-content-completed")) {
			result = new MypageAdminQnaContentCompletedController().execute(req, resp);
		}else if(target.equals("mypage/mypage-admin-qna-list-waiting")) {
			result = new MypageAdminQnaListWaitingController().execute(req, resp);
		}else if(target.equals("mypage/mypage-admin-user-manage")) {
			result = new MypageAdminUserManageController().execute(req, resp);
		}else if(target.equals("mypage/mypage-admin-faq-register")) {
			result = new MypageAdminFaqRegisterController().execute(req, resp);
		}else if(target.equals("mypage/mypage-admin-faq-content")) {
			result = new MypageAdminFaqContentController().execute(req, resp);
		}else {
//			전부 404
		}
		
		
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
