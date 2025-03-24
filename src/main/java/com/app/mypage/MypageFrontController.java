package com.app.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.auction.controller.AuctionBiddingController;
import com.app.auction.controller.AuctionController;
import com.app.auction.controller.AuctionModifyController;
import com.app.auction.controller.AuctionModifyOkController;
import com.app.auction.controller.AuctionPaymentController;
import com.app.mypage.controller.MypageArtLikeListController;
import com.app.mypage.controller.MypageContactListController;
import com.app.mypage.controller.MypageContactWriteController;
import com.app.mypage.controller.MypageExhibitionLikeListController;
import com.app.mypage.controller.MypageMainController;

public class MypageFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8;");
		
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("mypage/mypage-main")) {
			result = new MypageMainController().execute(req, resp);
		}else if(target.equals("mypage/mypage-contact-artist-list")) {
			result = new MypageContactListController().execute(req, resp);
		}else if(target.equals("mypage/mypage-contact-artist-write")) {
			result = new MypageContactWriteController().execute(req, resp);
		}else if(target.equals("mypage/mypage-art-like-list")) {
			result = new MypageArtLikeListController().execute(req, resp);
		}else if(target.equals("mypage/mypage-exhibition-like-list")) {
			result = new MypageExhibitionLikeListController().execute(req, resp);
	
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
