package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;

public class UniversityExhibitionImgDAO {
	public SqlSession sqlSession;
	
 	public UniversityExhibitionImgDAO() {
 		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
 	}

}
