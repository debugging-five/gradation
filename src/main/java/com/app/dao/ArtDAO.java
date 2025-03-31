package com.app.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.ArtLikeVO;
import com.app.vo.ArtVO;

public class ArtDAO {
	public SqlSession sqlSession;
	
 	public ArtDAO() {
 		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
 	}
 	
 	
// 	✔ 작품 업로드
    // 작품 업로드 (전시중)
    public void insertArtForExhibition(ArtVO artVO) {
        sqlSession.insert("art.insert", artVO);
    }

    // 작품 업로드 (전시예정)
    public void insertArtForUpcomingExhibition(ArtVO artVO) {
        sqlSession.insert("art.insert", artVO);
    }


// 	✔ 작품 상세보기
    // 모든 작품 조회
    public List<ArtVO> selectAllArts() {
    	return sqlSession.selectList("art.selectAll");
    }
    
    // 특정 작품 조회 (ID로)
    public ArtVO selectArtById(int id) {
    	return sqlSession.selectOne("art.selectById", id);
    }
 	
    
// 	✔ 좋아요 기능
    // 작품 좋아요 추가
    public void insertArtLike(ArtLikeVO artLikeVO) {
        sqlSession.insert("art.insertArtLike", artLikeVO);
    }
    
    	
// 	✔ 전시 필터링
 	
 	
}
