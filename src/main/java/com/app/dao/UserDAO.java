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
 		return sqlSession.selectOne("user.idCheck", userId);
 	}
 	
 //	회원가입	
 	public void insert(UserVO userVO) {
 		sqlSession.insert("user.insert",userVO);
 	}
 	
// 	로그인
 	public String login(UserVO userVO) {
 		return sqlSession.selectOne("user.login", userVO);
 	}
 	public int banCheck(UserVO userVO) {
 		return sqlSession.selectOne("user.banCheck", userVO);
 	}
 }