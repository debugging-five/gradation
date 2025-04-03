package com.app.dao;

import java.util.List;
import java.util.Optional;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.FaqVO;

public class AdminDAO {
	public SqlSession sqlSession;
	
	public AdminDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	
	
	
	
//	FAQ 전체 조회
	public List<FaqVO> selectFaqAll() {
		return sqlSession.selectList("admin.selectFaqAll");
	}
	
//	FAQ 하나 조회
	public Optional<FaqVO> selectFaqById(Long id) {
		return Optional.ofNullable(sqlSession.selectOne("admin.selectFaqById", id));
	}
	
//	FAQ 등록
	public void insertFaq(FaqVO faqVO) {
		sqlSession.insert("admin.insertFaq", faqVO);
	}
	
//	FAQ 등록 후 바로 확인
	public Long selectLastFaqById() {
		return sqlSession.selectOne("admin.selectLastFaqById");
	}
	
	
//	FAQ 수정
	public void updateFaq(FaqVO faqVO) {
		sqlSession.update("admin.updateFaq", faqVO);
	}
	
//	FAQ 삭제
	public void deleteFaq(Long id) {
		sqlSession.delete("admin.deleteFaq", id);
	}
	
	
}
