package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;

public class QnaAnswerDAO {
	public SqlSession sqlSession;
	
 	public QnaAnswerDAO() {
 		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
 	}

}
