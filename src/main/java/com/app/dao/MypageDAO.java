package com.app.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.MailDTO;
import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.ArtLikeVO;
import com.app.vo.AuctionBiddingVO;
import com.app.vo.AuctionVO;
import com.app.vo.MailVO;
import com.app.vo.ReplyVO;
import com.app.vo.UserVO;

public class MypageDAO {
	public SqlSession sqlSession;
	
 	public MypageDAO() {
 		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
 	}
 	
    // 회원 정보 조회
    public UserVO selectUserDetails(int userId) {
        return sqlSession.selectOne("user.selectUserDetails", userId);
    }
    
    // 내 댓글 조회
    public ReplyVO selectReplyById(int id) {
        return sqlSession.selectOne("selectReplyById", id);
    } 
    
    // 내가 눌렀던 작품 좋아요 조회
    public List<ArtLikeVO> selectLikesByUserId(int userId) {
        return sqlSession.selectList("selectLikesByUserId", userId);
    }
    
    // 유저의 경매 구매 내역 조회
    public List<AuctionBiddingVO> selectBiddingByUserId(int userId) {
        return sqlSession.selectList("selectBiddingByUserId", userId);
    }

    // 유저의 경매 판매 내역 조회
    public List<AuctionVO> selectAuctionByUserId(int userId) {
        return sqlSession.selectList("selectAuctionByUserId", userId);
    }
    
    
    // 메일 전송
    public void insertMail(MailDTO mailDTO) {
    	sqlSession.insert("mypage.insertMail", mailDTO);
    }
	 
 	
	


 	
 	
 	
}
