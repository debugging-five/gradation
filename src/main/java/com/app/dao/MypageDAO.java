package com.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.UserVO;
import com.app.vo.ReplyVO;
import com.app.dto.AuctionDTO;
import com.app.vo.ArtVO;

public class MypageDAO {
	private SqlSession sqlSession;

	public MypageDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	// 내 정보 조회
	public UserVO selectMyInfo(Long userId) {
		return sqlSession.selectOne("mypage.selectMyInfo", userId);
	}

	// 내가 남긴 댓글
	public List<ReplyVO> selectMyReplies(Long userId) {
		return sqlSession.selectList("mypage.selectMyReplies", userId);
	}

	// 내가 '좋아요'한 작품
	public List<ArtVO> selectMyLikedArts(Long userId) {
		return sqlSession.selectList("mypage.selectMyLikedArts", userId);
	}

	// 구매 내역
	public List<AuctionDTO> selectMyPurchases(Long userId) {
		return sqlSession.selectList("mypage.selectMyPurchases", userId);
	}

	// 판매 내역
	public List<AuctionDTO> selectMySales(Long userId) {
		return sqlSession.selectList("mypage.selectMySales", userId);
	}
}
