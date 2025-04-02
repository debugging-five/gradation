package com.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.AuctionDTO;
import com.app.dto.MailDTO;
import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.AuctionVO;
import com.app.vo.MailVO;

public class AuctionDAO {
	public SqlSession sqlSession;
	
 	public AuctionDAO() {
 		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
 	}
 	
// 	경매 추가
 	public void insert(AuctionVO auctionVO) {
 		sqlSession.insert("auction.insert", auctionVO);
 	}
 	
// 	경매 ID 조회
 	public Long selectId() {
 		return sqlSession.selectOne("auction.selectId");
 	}
 	
// 	경매 전체 조회
 	public List<AuctionDTO> selectAll() {
 		return sqlSession.selectList("auction.selectAll");
 	}
 	
// 	경매 수정 (준비중인 경매)
 	public void update(AuctionVO auctionVO) {
 		sqlSession.update("auction.update", auctionVO);
 	}
 	
 	
// 	경매 삭제 (준비중인 경매)
 	public void delete(Long id) {
 		sqlSession.delete("auction.delete", id);
 	}
 	
 	

}
