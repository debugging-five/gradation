package com.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.ArtDTO;

public class DisplayDAO {
    private SqlSession sqlSession;

    public DisplayDAO(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    public List<ArtDTO> getDisplayList() {
        return sqlSession.selectList("displayMapper.selectDisplayList");
    }
}
