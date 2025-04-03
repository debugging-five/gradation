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

    // ✔ 작품 업로드
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

    public void insertCommingSoon(ArtPostDTO artPostDTO) {
        sqlSession.insert("art.insertCommingSoon", artPostDTO);
    }
    
    public void insertArtPost(ArtPostDTO artPostDTO) {
        sqlSession.insert("art.insertArtPost", artPostDTO);
    }
    public ArtPostDTO selectArtById(Long artId) {
        return sqlSession.selectOne("art.selectArtById", artId);
    }

    // ✔ 작품 상세보기
    public List<ArtVO> selectAll() {
        return sqlSession.selectList("art.selectAll");
    }

	/*
	 * public ArtVO selectArtById(Long id) { return
	 * sqlSession.selectOne("art.selectById", id); }
	 */

    // ✔ 좋아요 기능
    public void insertArtLike(ArtLikeVO artLikeVO) {
        sqlSession.insert("art.insertArtLike", artLikeVO);
    }

    // ✔ 전시중인 작품 조회 - 카테고리 포함
    public List<ArtDTO> selectDisplayListFiltered(int startIndex, int pageSize, String category) {
        Map<String, Object> pageInfo = new HashMap<>();
        pageInfo.put("startRow", startIndex);
        pageInfo.put("endRow", startIndex + pageSize);
        pageInfo.put("category", category); 

        return sqlSession.selectList("art.selectDisplayListFiltered", pageInfo);
    }

    public int getFilteredDisplayCount(String category) {
        Map<String, Object> param = new HashMap<>();
        param.put("category", category);

        return sqlSession.selectOne("art.selectDisplayCountFiltered", param);
    }


    // ✔ 전체 전시중 작품 조회 (필터 없이)
    public List<ArtDTO> selectDisplayList(int startIndex, int pageSize) {
        Map<String, Integer> pageInfo = new HashMap<>();
        pageInfo.put("startRow", startIndex);
        pageInfo.put("endRow", startIndex + pageSize);
        return sqlSession.selectList("art.selectDisplayList", pageInfo);
    }

    public int getTotalDisplayCount() {
        return sqlSession.selectOne("art.selectDisplayCount");
    }
    
    public int getCommingSoonCount() {
        return sqlSession.selectOne("art.selectCommingSoonCount");
    }

    public List<ArtDTO> selectCommingSoonList(int startIndex, int pageSize) {
        Map<String, Integer> pageInfo = new HashMap<>();
        pageInfo.put("startRow", startIndex);
        pageInfo.put("endRow", startIndex + pageSize);
        return sqlSession.selectList("art.selectCommingSoonList", pageInfo);
    }

    public int getFilteredCommingSoonCount(String category) {
        Map<String, Object> param = new HashMap<>();
        param.put("category", category);
        return sqlSession.selectOne("art.selectCommingSoonCountFiltered", param);
    }

    public List<ArtDTO> selectCommingSoonListFiltered(int startIndex, int pageSize, String category) {
        Map<String, Object> pageInfo = new HashMap<>();
        pageInfo.put("startRow", startIndex);
        pageInfo.put("endRow", startIndex + pageSize);
        pageInfo.put("category", category);
        return sqlSession.selectList("art.selectCommingSoonListFiltered", pageInfo);
    }


}
