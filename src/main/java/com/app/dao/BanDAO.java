package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;

public class BanDAO {
	public SqlSession sqlSession;
	
 	public BanDAO() {
 		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
 	}

}
