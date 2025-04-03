package com.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.MajorDTO;
import com.app.dto.QnaDTO;
import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.FaqVO;
import com.app.vo.QnaVO;
import com.app.vo.UserVO;
 
 public class UserDAO {
 	
 	public SqlSession sqlSession;
 	
 	public UserDAO() {
 		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
 	}
 	
 //	아이디 중복체크
 	public int idCheck(String userIdentification) {
 		return sqlSession.selectOne("user.idCheck", userIdentification);
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
// 	비밀번호 찾기
 	public String selectPassword(String userId) {
 		return sqlSession.selectOne("user.selectPassword", userId);
 	}
 	
// 	비밀번호 변경
 	public void changePassword(UserVO userVO) {
 		sqlSession.update("user.changePassword", userVO);
 	}
 	
// 	유저 조회
 	public UserVO selectUserByEmail(String userEmail) {
		return sqlSession.selectOne("user.selectUserByEmail", userEmail);
 	}
 	
 	public MajorDTO selectMajorDTOByEmail(String userEmail) {
 		return sqlSession.selectOne("user.selectMajorDTOByEmail", userEmail);
 	}
 	
// 	회원정보 수정
 	public void updateUser(UserVO userVO) {
 		sqlSession.update("user.updateUser", userVO);
 	}
 	
// 	회원 탈퇴
 	public void deleteUser(String userEmail) {
 		sqlSession.delete("user.deleteUser", userEmail);
 	}
 	
// 	학교인증 요청
 	public void updateUserUniversityStatus(UserVO userVO) {
 		sqlSession.update("user.updateUserUniversityStatus", userVO);
 	}
 	
// 	--------------------------------임시 매서드---------------------------------------
 	
// 	FAQ임시
 	public List<FaqVO> selectFaqAll() {
 		return sqlSession.selectList("admin.selectFaqAll");
 	}
 	public FaqVO selectFaqById(Long faqId) {
 		return sqlSession.selectOne("admin.selectFaqById", faqId);
 	}
 	
// 	본인 QNA조회
 	public List<QnaDTO> selectQna(String userEmail) {
 		return sqlSession.selectList("user.selectQna", userEmail);
 	}
 	
// 	qna상세
 	public QnaDTO selectOneQna(QnaDTO qnaDTO) {
 		return sqlSession.selectOne("user.selectOneQna", qnaDTO);
 	}
 	public QnaVO selectQnaById(Long qnaId) {
 		return sqlSession.selectOne("user.selectQnaById", qnaId);
 	}
 	
// 	qna insert
 	public void insertQna(QnaVO qnaVO) {
 		sqlSession.insert("user.insertQna", qnaVO);
 	}
 	
// 	qna update
 	public void updateQna(QnaVO qnaVO) {
 		sqlSession.update("user.updateQna", qnaVO);
 	}
 	
// 	qna delete
 	public void deleteQna(long qnaId) {
 		sqlSession.delete("user.deleteQna", qnaId);
 	}
 	
 }