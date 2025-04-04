package com.app.auction.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.AuctionDAO;
import com.app.dto.AuctionDTO;

public class AuctionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		String display = req.getParameter("display");
		String category = req.getParameter("category");
		String page = req.getParameter("page");
		AuctionDAO auctionDAO = new AuctionDAO();
		Map<String, String> categoryMap = new HashMap<String, String>();
		categoryMap.put("korean", "한국화");
		categoryMap.put("painting", "회화");
		categoryMap.put("sculpture", "조각");
		categoryMap.put("craft", "공예");
		categoryMap.put("architecture", "건축");
		categoryMap.put("calligraphy", "서예");
		
		final String useInLambda = categoryMap.get(category);
		if(display == null) {
			display = "bidding";
		}
		if(category == null) {
			category = "korean";
		}
		if(page == null) {
			page = "1";
		}
		req.setAttribute("display", display);
		req.setAttribute("category", category);
		req.setAttribute("page", page);
		List<AuctionDTO> auctionList = auctionDAO.selectAll();
		List<AuctionDTO> showList = new ArrayList<AuctionDTO>();
		Timestamp time = new Timestamp(System.currentTimeMillis());
		
		switch (display) {
		case "comming": {
				auctionList = auctionList.stream().filter((data) -> ((data.getAuctionStartDate().getTime() - time.getTime()) > 0)).collect(Collectors.toList());
				System.out.println("예정중");
				
				break;
			}
		case "bidding": {
				auctionList = auctionList.stream().filter((data) -> ((data.getAuctionStartDate().getTime() - time.getTime()) < 0 && data.getAuctionBidDate() == null)).collect(Collectors.toList());
				System.out.println("경매중");
				break;
			}
		case "complete": {
				auctionList = auctionList.stream().filter((data) -> data.getAuctionBidDate() != null).collect(Collectors.toList());
				System.out.println("완료");
				break;
			}
		default: {
				result.setPath("../main/main.main?exception=true");
				result.setRedirect(true);
				return result;
			}
		}
		
//		카테고리 분류
		auctionList = auctionList.stream().filter((data) -> data.getArtCategory().equals(useInLambda)).collect(Collectors.toList());
		
//		페이지 분류
		int nowPage = Integer.parseInt(page);
		
		for(int i = (nowPage-1)*15; i < i + 15; i++) {
			try {
				showList.add(auctionList.get(i));
			} catch (Exception e) {
				break;
			}
		}
		System.out.println(nowPage);
		System.out.println(showList);
		req.setAttribute("list", showList);
		result.setPath("auction-main.jsp");
		return result;
	}

}
