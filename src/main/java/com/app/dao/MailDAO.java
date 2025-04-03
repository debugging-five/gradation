package com.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.MailVO;

public class MailDAO {
    private SqlSession sqlSession;

    public MailDAO() {
        sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
    }


    public List<MailVO> findReceivedMails(Long userId) {
        return sqlSession.selectList("mail.findReceivedMails", userId);
    }
    
    public List<MailVO> findSentMails(Long userId) {
        return sqlSession.selectList("mail.findSentMails", userId);
    }
    
    public MailVO findById(Long id) {
        return sqlSession.selectOne("mail.findById", id);
    }


}
