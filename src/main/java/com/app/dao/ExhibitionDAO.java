package com.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.ArtPostDTO;
import com.app.dto.GradationExhibitionDTO;
import com.app.dto.MailDTO;
import com.app.dto.MajorDTO;
import com.app.dto.UniversityExhibitionDTO;
import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.GradationExhibitionVO;

public class ExhibitionDAO {
	public SqlSession sqlSession;
	
 	public ExhibitionDAO() {
 		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
 	}
 	
// 	그라데이션 전시회 메인
 	public List<GradationExhibitionDTO> selectGradationExhibitionList() {
 		return sqlSession.selectList("selectGradationExhibitionList");
 	}
 	
// 	그라데이션 전시회 등록
 	public void insertGradationExhibition(GradationExhibitionVO gradationExhibition) {
 		sqlSession.insert("exhibition.insertGradationExhibition", gradationExhibition);
 	}
 	
// 	그라데이션 전시회 수정
 	public void updateGradationExhibition(GradationExhibitionVO gradationExhibition) {
 		sqlSession.update("exhibition.updateGradationExhibition", gradationExhibition);
 	}
 	
// 	작품 좋아요 탑10 불러오기
 	public List<ArtPostDTO> selectTop10Art() {
 		return sqlSession.selectList("art.selectTop10Art", null);
 	}
 	
// 	학교 전시회 메인
 	public List<UniversityExhibitionDTO> selectUniversityExhibitionList() {
 		return sqlSession.selectList("exhibition.selectUniversityExhibitionList");
 	}
 	
// 	학교 전시회 등록
 	public void insertUniversityExhibition(MajorDTO majorDTO) {
 		sqlSession.insert("exhibition.insertUniversityExhibition", majorDTO);
 	}
 	
    
// 대학교 전시회 메인
    public List<MajorDTO> selectUniversityExhibition() {
    	return sqlSession.selectList("exhibition.selectUniversityExhibition");
    }
    
}
