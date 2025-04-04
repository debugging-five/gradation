package com.app.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.mypage.controller.MypageSendPostContentModifyController;
import com.app.mypage.controller.MypageSendPostContentModifyOkController;
import com.app.mypage.controller.MypageAdminFaqContentController;
import com.app.mypage.controller.MypageAdminFaqContentDeleteController;
import com.app.mypage.controller.MypageAdminFaqContentUpdateController;
import com.app.mypage.controller.MypageAdminFaqContentUpdateOkController;
import com.app.mypage.controller.MypageAdminFaqListController;
import com.app.mypage.controller.MypageAdminFaqRegisterController;
import com.app.mypage.controller.MypageAdminFaqRegisterOkController;
import com.app.mypage.controller.MypageAdminFormApprovedController;
import com.app.mypage.controller.MypageAdminFormNotApprovedController;
import com.app.mypage.controller.MypageAdminQnaContentAnswerController;
import com.app.mypage.controller.MypageAdminQnaContentAnswerOkController;
import com.app.mypage.controller.MypageAdminQnaContentCompletedController;
import com.app.mypage.controller.MypageAdminQnaContentController;
import com.app.mypage.controller.MypageAdminQnaListCompletedController;
import com.app.mypage.controller.MypageAdminQnaListWaitingController;
import com.app.mypage.controller.MypageAdminUserManageController;
import com.app.mypage.controller.MypageArtLikeListControllerController;
import com.app.mypage.controller.MypageArtistDetailModifyController;
import com.app.mypage.controller.MypageArtistDetailModifyOkController;
import com.app.mypage.controller.MypageChangePasswordController;
import com.app.mypage.controller.MypageCommentsListController;
import com.app.mypage.controller.MypageContactArtistDeleteOkController;
import com.app.mypage.controller.MypageContactArtistDetailController;
import com.app.mypage.controller.MypageContactArtistListController;
import com.app.mypage.controller.MypageContactArtistUpdateController;
import com.app.mypage.controller.MypageContactArtistUpdateOkController;
import com.app.mypage.controller.MypageContactArtistWriteController;
import com.app.mypage.controller.MypageContactArtistWriteOkController;
import com.app.mypage.controller.MypageDeleteIdController;
import com.app.mypage.controller.MypageDeleteIdOkController;
import com.app.mypage.controller.MypageExhibitionLikeListController;
import com.app.mypage.controller.MypageFormDetailController;
import com.app.mypage.controller.MypageMainController;
import com.app.mypage.controller.MypageModifyController;
import com.app.mypage.controller.MypageModifyOkController;
import com.app.mypage.controller.MypageMyAuctionList;
import com.app.mypage.controller.MypageMyPayList;
import com.app.mypage.controller.MypageMyPostContentController;
import com.app.mypage.controller.MypageMyPostListController;
import com.app.mypage.controller.MypagePostContentController;
import com.app.mypage.controller.MypagePostDeleteOkController;
import com.app.mypage.controller.MypagePostListController;
import com.app.mypage.controller.MypageSendEmailController;
import com.app.mypage.controller.MypageServiceCenterFaqContentController;
import com.app.mypage.controller.MypageServiceCenterQnaContentController;
import com.app.mypage.controller.MypageServiceCenterQnaDeleteOkController;
import com.app.mypage.controller.MypageServiceCenterFaqListController;
import com.app.mypage.controller.MypageServiceCenterQnaListController;
import com.app.mypage.controller.MypageServiceCenterQnaSendController;
import com.app.mypage.controller.MypageServiceCenterQnaSendOkController;
import com.app.mypage.controller.MypageServiceCenterQnaUpdateController;
import com.app.mypage.controller.MypageServiceCenterQnaUpdateOkController;
import com.app.mypage.controller.MypageUniversityCertificationController;
import com.app.mypage.controller.MypageUniversityCertificationOkController;
import com.app.mypage.controller.mypageChangePasswordOkController;

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
      }else if(target.equals("mypage/mypage-modify-ok")) {
          result = new MypageModifyOkController().execute(req, resp);
      }else if(target.equals("mypage/mypage-contact-artist-list")) {
         result = new MypageContactArtistListController().execute(req, resp);
      }else if(target.equals("mypage/mypage-contact-artist-detail")) {
         result = new MypageContactArtistDetailController().execute(req, resp);
      }else if(target.equals("mypage/mypage-contact-artist-write")) {
         result = new MypageContactArtistWriteController().execute(req, resp);
      }else if(target.equals("mypage/mypage-contact-artist-write-ok")) {
    	  result = new MypageContactArtistWriteOkController().execute(req, resp);
      }else if(target.equals("mypage/mypage-contact-artist-update")) {
    	  result = new MypageContactArtistUpdateController().execute(req, resp);
      }else if(target.equals("mypage/mypage-contact-artist-update-ok")) {
    	  result = new MypageContactArtistUpdateOkController().execute(req, resp);
      }else if(target.equals("mypage/mypage-contact-artist-delete-ok")) {
    	  result = new MypageContactArtistDeleteOkController().execute(req, resp);
      }else if(target.equals("mypage/mypage-comments-list")) {
         result = new MypageCommentsListController().execute(req, resp);
      }else if(target.equals("mypage/mypage-change-password")) {
          result = new MypageChangePasswordController().execute(req, resp);
      }else if(target.equals("mypage/mypage-change-password-ok")) {
          result = new mypageChangePasswordOkController().execute(req, resp);
      }else if(target.equals("mypage/mypage-art-like-list")) {
         result = new MypageArtLikeListControllerController().execute(req, resp);
      }else if(target.equals("mypage/mypage-exhibition-like-list")) {
         result = new MypageExhibitionLikeListController().execute(req, resp);
      }else if(target.equals("mypage/mypage-post-list")) {
         result = new MypagePostListController().execute(req, resp);
      }else if(target.equals("mypage/mypage-post-content")) {
    	  result = new MypagePostContentController().execute(req, resp);
      }else if(target.equals("mypage/mypage-my-post-list")) {
         result = new MypageMyPostListController().execute(req, resp);
      }else if(target.equals("mypage/mypage-my-post-content")) {
    	  result = new MypageMyPostContentController().execute(req, resp);
      }else if(target.equals("mypage/mypage-post-delete-ok")) {
    	    result = new MypagePostDeleteOkController().execute(req, resp);
      }else if(target.equals("mypage/mypage-send-post-content-modify")) {
    	  result = new MypageSendPostContentModifyController().execute(req, resp);
      }else if(target.equals("mypage/mypage-send-post-content-modify-ok")) {
    	    result = new MypageSendPostContentModifyOkController().execute(req, resp);
      }else if(target.equals("mypage/mypage-service-center-qna-list")) {
          result = new MypageServiceCenterQnaListController().execute(req, resp);
      }else if(target.equals("mypage/mypage-service-center-qna-send")) {
          result = new MypageServiceCenterQnaSendController().execute(req, resp);
      }else if(target.equals("mypage/mypage-service-center-qna-send-ok")) {
          result = new MypageServiceCenterQnaSendOkController().execute(req, resp);
      }else if(target.equals("mypage/mypage-service-center-qna-content")) {
          result = new MypageServiceCenterQnaContentController().execute(req, resp);
      }else if(target.equals("mypage/mypage-service-center-qna-update")) {
          result = new MypageServiceCenterQnaUpdateController().execute(req, resp);
      }else if(target.equals("mypage/mypage-service-center-qna-update-ok")) {
          result = new MypageServiceCenterQnaUpdateOkController().execute(req, resp);
      }else if(target.equals("mypage/mypage-service-center-qna-delete-ok")) {
          result = new MypageServiceCenterQnaDeleteOkController().execute(req, resp);
      }else if(target.equals("mypage/mypage-service-center-faq-list")) {
          result = new MypageServiceCenterFaqListController().execute(req, resp);
      }else if(target.equals("mypage/mypage-service-center-faq-content")) {
          result = new MypageServiceCenterFaqContentController().execute(req, resp);
      }else if(target.equals("mypage/mypage-university-certification")) {
          result = new MypageUniversityCertificationController().execute(req, resp);
      }else if(target.equals("mypage/mypage-university-certification-ok")) {
          result = new MypageUniversityCertificationOkController().execute(req, resp);
      }else if(target.equals("mypage/mypage-artist-detail-modify")) {
          result = new MypageArtistDetailModifyController().execute(req, resp);
      }else if(target.equals("mypage/mypage-artist-detail-modify-ok")) {
          result = new MypageArtistDetailModifyOkController().execute(req, resp);
      }else if(target.equals("mypage/mypage-my-auction-list")) {
          result = new MypageMyAuctionList().execute(req, resp);
      }else if(target.equals("mypage/mypage-my-pay-list")) {
          result = new MypageMyPayList().execute(req, resp);
      }else if(target.equals("mypage/form-detail")) {
           result = new MypageFormDetailController().execute(req, resp);
      }else if(target.equals("mypage/mypage-delete-id")) {
           result = new MypageDeleteIdController().execute(req, resp);
      }else if(target.equals("mypage/mypage-delete-id-ok")) {
           result = new MypageDeleteIdOkController().execute(req, resp);
      }else if(target.equals("mypage/mypage-send-email")) {
     	  result = new MypageSendEmailController().execute(req, resp);

//    admin QNA
      }else if(target.equals("mypage/mypage-admin-qna-list-waiting")) {
          result = new MypageAdminQnaListWaitingController().execute(req, resp);
      }else if(target.equals("mypage/mypage-admin-qna-list-completed")) {
          result = new MypageAdminQnaListCompletedController().execute(req, resp);
      }else if(target.equals("mypage/mypage-admin-qna-content")) {
          result = new MypageAdminQnaContentController().execute(req, resp);
      }else if(target.equals("mypage/mypage-admin-qna-content-completed")) {
          result = new MypageAdminQnaContentCompletedController().execute(req, resp);
      }else if(target.equals("mypage/mypage-admin-qna-content-answer")) {
          result = new MypageAdminQnaContentAnswerController().execute(req, resp);          
      }else if(target.equals("mypage/mypage-admin-qna-content-answer-ok")) {
          result = new MypageAdminQnaContentAnswerOkController().execute(req, resp);          

      }else if(target.equals("mypage/mypage-admin-form-not-approved")) {
          result = new MypageAdminFormNotApprovedController().execute(req, resp);
      }else if(target.equals("mypage/mypage-admin-form-approved")) {
          result = new MypageAdminFormApprovedController().execute(req, resp);
      }else if(target.equals("mypage/mypage-admin-user-manage")) {
          result = new MypageAdminUserManageController().execute(req, resp);   
          
//    admin FAQ
      }else if(target.equals("mypage/mypage-admin-faq-list")) {
          result = new MypageAdminFaqListController().execute(req, resp);
      }else if(target.equals("mypage/mypage-admin-faq-register")) {
         result = new MypageAdminFaqRegisterController().execute(req, resp);
      }else if(target.equals("mypage/mypage-admin-faq-register-ok")) {
          result = new MypageAdminFaqRegisterOkController().execute(req, resp);
      }else if(target.equals("mypage/mypage-admin-faq-content-update")) {
          result = new MypageAdminFaqContentUpdateController().execute(req, resp);
      }else if(target.equals("mypage/mypage-admin-faq-content-update-ok")) {
          result = new MypageAdminFaqContentUpdateOkController().execute(req, resp);
      }else if(target.equals("mypage/mypage-admin-faq-delete-ok")) {
          result = new MypageAdminFaqContentDeleteController().execute(req, resp);    
      }else if(target.equals("mypage/mypage-admin-faq-content")) {
         result = new MypageAdminFaqContentController().execute(req, resp);
      }else {
//         전부 404
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
