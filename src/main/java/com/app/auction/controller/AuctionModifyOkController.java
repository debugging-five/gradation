package com.app.auction.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.app.Action;
import com.app.Result;

public class AuctionModifyOkController implements Action {

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        Result result = new Result();

        // Context Path 포함하여 리디렉션 경로 설정
        result.setPath(req.getContextPath() + "/auction-comming-soon-modify.auction");
        result.setRedirect(true);  // 리디렉션 활성화
        
        return result;
    }
}
