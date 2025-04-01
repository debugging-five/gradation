package com.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.AuctionDTO;
import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.AuctionVO;

public class AuctionDAO {
	public SqlSession sqlSession;
	
 	public AuctionDAO() {
 		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
 	}
 	
 	public void insert(AuctionVO auctionVO) {
 		sqlSession.insert("auction.insert", auctionVO);
 	}
 	
 	public Long selectId() {
 		return sqlSession.selectOne("auction.selectId");
 	}
 	
 	public List<AuctionDTO> selectAll() {
 		return sqlSession.selectList("auction.selectAll");
 	}
 	
 	public void update(AuctionVO auctionVO) {
 		sqlSession.update("auction.update", auctionVO);
 	}
 	
 	public void delete(Long id) {
 		sqlSession.delete("auction.delete", id);
 	}
 	
}
