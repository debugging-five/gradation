package com.app.dao;
 
 import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.UserVO;
 
 public class UserDAO {
 	
 	public SqlSession sqlSession;
 	
 	public UserDAO() {
 		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
 	}
 	
 //	아이디 중복체크
 	public int idCheck(String userId) {
 		return sqlSession.selectOne("user.idcheck", userId);
 	}
 	
 //	회원가입	
 	public void insert(UserVO userVO) {
 		sqlSession.insert("user.insert",userVO);
 	}
 	
// 	로그인
 }