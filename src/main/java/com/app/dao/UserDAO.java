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
 	public int emailCheck(String userEmail) {
 		return sqlSession.selectOne("user.emailCheck", userEmail);
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
 		int isBan = -1;
 		try {
 			isBan = sqlSession.selectOne("user.banCheck", userVO);			
		} catch (Exception e) {
		}
 		return isBan;
 	}
 	
// 	아이디찾기
 	public String selectIdByEmailAndName(UserVO userVO) {
 		String result = null;
 		try {
			result = sqlSession.selectOne("user.selectIdByEmailAndName", userVO);
		} catch (Exception e) {
		}
 		return result;
 	}
// 	비밀번호 변경 메일 인증
 	public int selectByIdAndEmailAndName(UserVO userVO) {
 		int result = -1;
 		try {
 			result = sqlSession.selectOne("user.selectByIdAndEmailAndName", userVO);
 		} catch (Exception e) {
 		}
 		return result;
 	}
 	
// 	비밀번호 변경
 	public void changePassword(UserVO userVO) {
 		sqlSession.update("user.changePassword", userVO);
 	}
 	
 }