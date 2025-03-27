package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;

public class ArtPostDAO {
	public SqlSession sqlSession;
	
 	public ArtPostDAO() {
 		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
 	}

}
