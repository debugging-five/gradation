package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;

public class PaymentCancellationDAO {
	public SqlSession sqlSession;
	
 	public PaymentCancellationDAO() {
 		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
 	}

}
