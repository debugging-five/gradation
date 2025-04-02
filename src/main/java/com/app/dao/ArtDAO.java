package com.app.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.ArtDTO;
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
    
 // 전시중인 작품 목록 조회 (작품 + 이미지 + 작가 이름)
    public List<ArtDTO> selectDisplayListFiltered(int startIndex, int pageSize, String category) {
        Map<String, Object> pageInfo = new HashMap<>();
        pageInfo.put("startRow", startIndex);
        pageInfo.put("endRow", startIndex + pageSize);
        
        if (category != null && !category.isEmpty()) {
            pageInfo.put("category", category);
            return sqlSession.selectList("art.selectDisplayListFiltered", pageInfo);
        } else {
            return sqlSession.selectList("art.selectDisplayList", pageInfo);
        }
    }

    public int getFilteredDisplayCount(String category) {
        if (category != null && !category.isEmpty()) {
            return sqlSession.selectOne("art.selectDisplayCountFiltered", category);
        } else {
            return sqlSession.selectOne("art.selectDisplayCount");
        }
    }
    
    public List<ArtDTO> selectDisplayList(int startIndex, int pageSize) {
        Map<String, Integer> pageInfo = new HashMap<>();
        pageInfo.put("startRow", startIndex);
        pageInfo.put("endRow", startIndex + pageSize);
        return sqlSession.selectList("art.selectDisplayList", pageInfo);
    }

    public int getTotalDisplayCount() {
        return sqlSession.selectOne("art.selectDisplayCount");
    }

 	
}
