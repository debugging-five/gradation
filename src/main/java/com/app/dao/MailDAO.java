package com.app.dao;

import java.util.List;
import java.util.Map;
import java.util.HashMap;


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
    
    public void delete(Long id) {
        sqlSession.delete("mail.delete", id);
    }

    public void insertReply(MailVO mailVO) {
        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("mailTitle", mailVO.getMailTitle());
        paramMap.put("mailContents", mailVO.getMailContents());
        paramMap.put("mailSendTime", mailVO.getMailSendTime());
        paramMap.put("mailOpenOk", mailVO.getMailOpenOk());
        paramMap.put("sendUserId", mailVO.getSendUserId());
        paramMap.put("receiveUserEmail", mailVO.getReceiveUserEmail());

        sqlSession.insert("mail.insertReply", paramMap);
    }

    public Long findUserIdByEmail(String email) {
        return sqlSession.selectOne("mail.findUserIdByEmail", email);
    }
    
    public void sendMailByEmail(MailVO mailVO) {
        sqlSession.insert("mail.sendMailByEmail", mailVO);
    }

    public void insertByEmail(MailVO mailVO) {
        sqlSession.insert("mail.insertByEmail", mailVO);
    }

}
