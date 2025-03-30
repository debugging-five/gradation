package com.app.dao;

import com.app.vo.ArtVO;
import com.app.vo.UserVO;

import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class ArtistDAO {
    private SqlSession sqlSession;

    public ArtistDAO(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    // 1. 작가 정보 조회
    public UserVO selectArtistInfo(Long userId) {
        return sqlSession.selectOne("artist.selectArtistInfo", userId);
    }

    // 2. 작가 작품 목록 조회
    public List<ArtVO> selectArtistArtList(Long userId) {
        return sqlSession.selectList("artist.selectArtistArtList", userId);
    }

    // 3. 작가 정보 수정
    public void updateArtistInfo(UserVO userDTO) {
        sqlSession.update("artist.updateArtistInfo", userDTO);
    }
}
