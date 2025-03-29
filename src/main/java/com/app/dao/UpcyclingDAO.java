package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.UpcycleDTO;
import com.app.mybatis.config.MyBatisConfig;

public class UpcyclingDAO {
	public SqlSession sqlSession;
	
 	public UpcyclingDAO() {
 		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
 	}
 	
// 	업사이클링 신청
 	public void insertUpcycle(UpcycleDTO upcycle) {
 		sqlSession.insert("upcycle.insertUpcycle",upcycle);
 	}
}
