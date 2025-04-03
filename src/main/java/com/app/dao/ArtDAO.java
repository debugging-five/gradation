package com.app.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.ArtPostDTO;
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
    public void insert(ArtPostDTO artPostDTO) {
        sqlSession.insert("art.insert", artPostDTO);
    }
    public void insertImg(ArtPostDTO artPostDTO) {
        Long latestArtId = getLatestArtId();  // 최신 ID 가져오기
        artPostDTO.setArtId(latestArtId);  // DTO에 설정
        
        sqlSession.insert("art.insertImg", artPostDTO);
    }
    public Long getLatestArtId() {
        return sqlSession.selectOne("getLatestArtId");
    }

    // 작품 업로드 (전시예정)
    public void insertCommingSoon(ArtPostDTO artPostDTO) {
        sqlSession.insert("art.insertCommingSoon", artPostDTO);
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
