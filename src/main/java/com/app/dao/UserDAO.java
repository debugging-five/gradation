package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.vo.UserVO;

public class UserDAO {
	
	public SqlSession sqlSession;
	
//	아이디 중복체크
	public boolean idCheck(String userid) {
		if(sqlSession.selectOne("user.idCheck", userid).equals(null)) {
			return true;
		};
		return false;
	}
	
//	회원가입	
	public void insert(UserVO userVO) {
		sqlSession.insert("user.insert",userVO);
	}
	
}
