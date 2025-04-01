package com.app.display;

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
import com.app.display.controller.DisplayCategoryArchitectureController;
import com.app.display.controller.DisplayCategoryCalligraphyController;
import com.app.display.controller.DisplayCategoryCraftController;
import com.app.display.controller.DisplayCategoryKoreanController;
import com.app.display.controller.DisplayCategoryPaintingController;
import com.app.display.controller.DisplayCategorySculptureController;
import com.app.display.controller.DisplayDetailController;
import com.app.display.controller.DisplayMainCommingSoonController;
import com.app.display.controller.DisplayMainIngController;
import com.app.mypage.controller.MypageContactArtistWriteController;

public class DisplayFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8;");
		
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		
		
		if(target.equals("mypage/mypage-contact-artist-write")) {
			result = new MypageContactArtistWriteController().execute(req, resp);
		}else if(target.equals("display/display-main-ing")) {
			result = new DisplayMainIngController().execute(req, resp);
		}else if(target.equals("display/display-main-comming-soon")) {
			result = new DisplayMainCommingSoonController().execute(req, resp);
		}else if(target.equals("display/display-category-korean")) {
			result = new DisplayCategoryKoreanController().execute(req, resp);
		}else if(target.equals("display/display-category-painting")) {
			result = new DisplayCategoryPaintingController().execute(req, resp);
		}else if(target.equals("display/display-category-sculpture")) {
			result = new DisplayCategorySculptureController().execute(req, resp);
		}else if(target.equals("display/display-category-craft")) {
			result = new DisplayCategoryCraftController().execute(req, resp);
		}else if(target.equals("display/display-category-architecture")) {
			result = new DisplayCategoryArchitectureController().execute(req, resp);
		}else if(target.equals("display/display-category-calligraphy")) {
			result = new DisplayCategoryCalligraphyController().execute(req, resp);
		}else if(target.equals("display/display-detail")) {
			result = new DisplayDetailController().execute(req, resp);
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
