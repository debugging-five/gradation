package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;

public class UpcycleDAO {
	public SqlSession sqlSession;
	
 	public UpcycleDAO() {
 		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
 	}

}
