package com.app.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.ArtVO;

public class ArtDAO {
	public SqlSession sqlSession;

	public ArtDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	// 작품 업로드
	public void insertArt(ArtVO artVO) {
		sqlSession.insert("art.insertArt", artVO);
	}

	// 작품 좋아요 등록
	public void insertArtLike(Long artId, Long userId) {
		Map<String, Object> param = new HashMap<>();
		param.put("artId", artId);
		param.put("userId", userId);
		sqlSession.insert("art.insertArtLike", param);
	}

	// 작품 좋아요 취소
	public void deleteArtLike(Long artId, Long userId) {
		Map<String, Object> param = new HashMap<>();
		param.put("artId", artId);
		param.put("userId", userId);
		sqlSession.delete("art.deleteArtLike", param);
	}

	// 작품 상세 조회
	public ArtVO selectArtDetail(Long artId) {
		return sqlSession.selectOne("art.selectArtDetail", artId);
	}

	// 전시별 작품 필터링
	public List<ArtVO> selectArtByExhibition(Long exhibitionId) {
		return sqlSession.selectList("art.selectArtByExhibition", exhibitionId);
	}
}
