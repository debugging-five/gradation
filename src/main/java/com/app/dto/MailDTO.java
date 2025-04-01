package com.app.dto;

import java.sql.Timestamp;
import java.util.Objects;

public class MailDTO {
	private Long Id;
//	sendUserVO
	private Long sId; // Pk                 
	private String sUserImgName;            
	private String sUserImgPath;            
	private String sUserName;               
	private String sUserEmail;              
	private String sUserIdentification;     
	private String sUserPassword;           
	private String sUserPhone;              
	private String sUserNickname;           
	private String sUserAddress;   
	private String sUserDetailAddress;
	private String sUserPostalCode;         
	private int sUserSnsOk;                 
	private int sUserMailOk;                
	private int sUserAgreementOk;           
	private String sUserIntroduce;          
	private String sUserRecode;             
	private String sUserInstagram;          
	private String sUserYoutube;            
	private String sUserBlog;               
	private String sUserKakao;              
	private String sUserGoogle;             
	private String sUserNaver;              
	private int sUserWriterOk;              
	private int sUserAdminOk;               
	private int sUserBanOk;                 
	private Long smajorId;
	private String suserMajorImgName;
	private String suserMajorImgPath;
	
//	receiveUserVO
	private Long rId; // Pk                 
	private String rUserImgName;            
	private String rUserImgPath;            
	private String rUserName;               
	private String rUserEmail;              
	private String rUserIdentification;     
	private String rUserPassword;           
	private String rUserPhone;              
	private String rUserNickname;           
	private String rUserAddress;     
	private String rUserDetailAddress;
	private String rUserPostalCode;         
	private int rUserSnsOk;                 
	private int rUserMailOk;                
	private int rUserAgreementOk;           
	private String rUserIntroduce;          
	private String rUserRecode;             
	private String rUserInstagram;          
	private String rUserYoutube;            
	private String rUserBlog;               
	private String rUserKakao;              
	private String rUserGoogle;             
	private String rUserNaver;              
	private int rUserWriterOk;              
	private int rUserAdminOk;               
	private int rUserBanOk;                 
	private Long rmajorId;
	private String ruserMajorImgName;
	private String ruserMajorImgPath;	
	
//	MailVO
	private String mailTitle;
	private String mailContents;
	private Timestamp mailSendTime;
	private int mailOpenOk;
	private Long sendUserId;
	private Long receiveUserId;
	
	public MailDTO() {;}

	public MailDTO(Long id, Long sId, String sUserImgName, String sUserImgPath, String sUserName, String sUserEmail,
			String sUserIdentification, String sUserPassword, String sUserPhone, String sUserNickname,
			String sUserAddress, String sUserDetailAddress, String sUserPostalCode, int sUserSnsOk, int sUserMailOk,
			int sUserAgreementOk, String sUserIntroduce, String sUserRecode, String sUserInstagram, String sUserYoutube,
			String sUserBlog, String sUserKakao, String sUserGoogle, String sUserNaver, int sUserWriterOk,
			int sUserAdminOk, int sUserBanOk, Long smajorId, String suserMajorImgName, String suserMajorImgPath,
			Long rId, String rUserImgName, String rUserImgPath, String rUserName, String rUserEmail,
			String rUserIdentification, String rUserPassword, String rUserPhone, String rUserNickname,
			String rUserAddress, String rUserDetailAddress, String rUserPostalCode, int rUserSnsOk, int rUserMailOk,
			int rUserAgreementOk, String rUserIntroduce, String rUserRecode, String rUserInstagram, String rUserYoutube,
			String rUserBlog, String rUserKakao, String rUserGoogle, String rUserNaver, int rUserWriterOk,
			int rUserAdminOk, int rUserBanOk, Long rmajorId, String ruserMajorImgName, String ruserMajorImgPath,
			String mailTitle, String mailContents, Timestamp mailSendTime, int mailOpenOk, Long sendUserId,
			Long receiveUserId) {
		Id = id;
		this.sId = sId;
		this.sUserImgName = sUserImgName;
		this.sUserImgPath = sUserImgPath;
		this.sUserName = sUserName;
		this.sUserEmail = sUserEmail;
		this.sUserIdentification = sUserIdentification;
		this.sUserPassword = sUserPassword;
		this.sUserPhone = sUserPhone;
		this.sUserNickname = sUserNickname;
		this.sUserAddress = sUserAddress;
		this.sUserDetailAddress = sUserDetailAddress;
		this.sUserPostalCode = sUserPostalCode;
		this.sUserSnsOk = sUserSnsOk;
		this.sUserMailOk = sUserMailOk;
		this.sUserAgreementOk = sUserAgreementOk;
		this.sUserIntroduce = sUserIntroduce;
		this.sUserRecode = sUserRecode;
		this.sUserInstagram = sUserInstagram;
		this.sUserYoutube = sUserYoutube;
		this.sUserBlog = sUserBlog;
		this.sUserKakao = sUserKakao;
		this.sUserGoogle = sUserGoogle;
		this.sUserNaver = sUserNaver;
		this.sUserWriterOk = sUserWriterOk;
		this.sUserAdminOk = sUserAdminOk;
		this.sUserBanOk = sUserBanOk;
		this.smajorId = smajorId;
		this.suserMajorImgName = suserMajorImgName;
		this.suserMajorImgPath = suserMajorImgPath;
		this.rId = rId;
		this.rUserImgName = rUserImgName;
		this.rUserImgPath = rUserImgPath;
		this.rUserName = rUserName;
		this.rUserEmail = rUserEmail;
		this.rUserIdentification = rUserIdentification;
		this.rUserPassword = rUserPassword;
		this.rUserPhone = rUserPhone;
		this.rUserNickname = rUserNickname;
		this.rUserAddress = rUserAddress;
		this.rUserDetailAddress = rUserDetailAddress;
		this.rUserPostalCode = rUserPostalCode;
		this.rUserSnsOk = rUserSnsOk;
		this.rUserMailOk = rUserMailOk;
		this.rUserAgreementOk = rUserAgreementOk;
		this.rUserIntroduce = rUserIntroduce;
		this.rUserRecode = rUserRecode;
		this.rUserInstagram = rUserInstagram;
		this.rUserYoutube = rUserYoutube;
		this.rUserBlog = rUserBlog;
		this.rUserKakao = rUserKakao;
		this.rUserGoogle = rUserGoogle;
		this.rUserNaver = rUserNaver;
		this.rUserWriterOk = rUserWriterOk;
		this.rUserAdminOk = rUserAdminOk;
		this.rUserBanOk = rUserBanOk;
		this.rmajorId = rmajorId;
		this.ruserMajorImgName = ruserMajorImgName;
		this.ruserMajorImgPath = ruserMajorImgPath;
		this.mailTitle = mailTitle;
		this.mailContents = mailContents;
		this.mailSendTime = mailSendTime;
		this.mailOpenOk = mailOpenOk;
		this.sendUserId = sendUserId;
		this.receiveUserId = receiveUserId;
	}

	public Long getId() {
		return Id;
	}

	public void setId(Long id) {
		Id = id;
	}

	public Long getsId() {
		return sId;
	}

	public void setsId(Long sId) {
		this.sId = sId;
	}

	public String getsUserImgName() {
		return sUserImgName;
	}

	public void setsUserImgName(String sUserImgName) {
		this.sUserImgName = sUserImgName;
	}

	public String getsUserImgPath() {
		return sUserImgPath;
	}

	public void setsUserImgPath(String sUserImgPath) {
		this.sUserImgPath = sUserImgPath;
	}

	public String getsUserName() {
		return sUserName;
	}

	public void setsUserName(String sUserName) {
		this.sUserName = sUserName;
	}

	public String getsUserEmail() {
		return sUserEmail;
	}

	public void setsUserEmail(String sUserEmail) {
		this.sUserEmail = sUserEmail;
	}

	public String getsUserIdentification() {
		return sUserIdentification;
	}

	public void setsUserIdentification(String sUserIdentification) {
		this.sUserIdentification = sUserIdentification;
	}

	public String getsUserPassword() {
		return sUserPassword;
	}

	public void setsUserPassword(String sUserPassword) {
		this.sUserPassword = sUserPassword;
	}

	public String getsUserPhone() {
		return sUserPhone;
	}

	public void setsUserPhone(String sUserPhone) {
		this.sUserPhone = sUserPhone;
	}

	public String getsUserNickname() {
		return sUserNickname;
	}

	public void setsUserNickname(String sUserNickname) {
		this.sUserNickname = sUserNickname;
	}

	public String getsUserAddress() {
		return sUserAddress;
	}

	public void setsUserAddress(String sUserAddress) {
		this.sUserAddress = sUserAddress;
	}

	public String getsUserDetailAddress() {
		return sUserDetailAddress;
	}

	public void setsUserDetailAddress(String sUserDetailAddress) {
		this.sUserDetailAddress = sUserDetailAddress;
	}

	public String getsUserPostalCode() {
		return sUserPostalCode;
	}

	public void setsUserPostalCode(String sUserPostalCode) {
		this.sUserPostalCode = sUserPostalCode;
	}

	public int getsUserSnsOk() {
		return sUserSnsOk;
	}

	public void setsUserSnsOk(int sUserSnsOk) {
		this.sUserSnsOk = sUserSnsOk;
	}

	public int getsUserMailOk() {
		return sUserMailOk;
	}

	public void setsUserMailOk(int sUserMailOk) {
		this.sUserMailOk = sUserMailOk;
	}

	public int getsUserAgreementOk() {
		return sUserAgreementOk;
	}

	public void setsUserAgreementOk(int sUserAgreementOk) {
		this.sUserAgreementOk = sUserAgreementOk;
	}

	public String getsUserIntroduce() {
		return sUserIntroduce;
	}

	public void setsUserIntroduce(String sUserIntroduce) {
		this.sUserIntroduce = sUserIntroduce;
	}

	public String getsUserRecode() {
		return sUserRecode;
	}

	public void setsUserRecode(String sUserRecode) {
		this.sUserRecode = sUserRecode;
	}

	public String getsUserInstagram() {
		return sUserInstagram;
	}

	public void setsUserInstagram(String sUserInstagram) {
		this.sUserInstagram = sUserInstagram;
	}

	public String getsUserYoutube() {
		return sUserYoutube;
	}

	public void setsUserYoutube(String sUserYoutube) {
		this.sUserYoutube = sUserYoutube;
	}

	public String getsUserBlog() {
		return sUserBlog;
	}

	public void setsUserBlog(String sUserBlog) {
		this.sUserBlog = sUserBlog;
	}

	public String getsUserKakao() {
		return sUserKakao;
	}

	public void setsUserKakao(String sUserKakao) {
		this.sUserKakao = sUserKakao;
	}

	public String getsUserGoogle() {
		return sUserGoogle;
	}

	public void setsUserGoogle(String sUserGoogle) {
		this.sUserGoogle = sUserGoogle;
	}

	public String getsUserNaver() {
		return sUserNaver;
	}

	public void setsUserNaver(String sUserNaver) {
		this.sUserNaver = sUserNaver;
	}

	public int getsUserWriterOk() {
		return sUserWriterOk;
	}

	public void setsUserWriterOk(int sUserWriterOk) {
		this.sUserWriterOk = sUserWriterOk;
	}

	public int getsUserAdminOk() {
		return sUserAdminOk;
	}

	public void setsUserAdminOk(int sUserAdminOk) {
		this.sUserAdminOk = sUserAdminOk;
	}

	public int getsUserBanOk() {
		return sUserBanOk;
	}

	public void setsUserBanOk(int sUserBanOk) {
		this.sUserBanOk = sUserBanOk;
	}

	public Long getSmajorId() {
		return smajorId;
	}

	public void setSmajorId(Long smajorId) {
		this.smajorId = smajorId;
	}

	public String getSuserMajorImgName() {
		return suserMajorImgName;
	}

	public void setSuserMajorImgName(String suserMajorImgName) {
		this.suserMajorImgName = suserMajorImgName;
	}

	public String getSuserMajorImgPath() {
		return suserMajorImgPath;
	}

	public void setSuserMajorImgPath(String suserMajorImgPath) {
		this.suserMajorImgPath = suserMajorImgPath;
	}

	public Long getrId() {
		return rId;
	}

	public void setrId(Long rId) {
		this.rId = rId;
	}

	public String getrUserImgName() {
		return rUserImgName;
	}

	public void setrUserImgName(String rUserImgName) {
		this.rUserImgName = rUserImgName;
	}

	public String getrUserImgPath() {
		return rUserImgPath;
	}

	public void setrUserImgPath(String rUserImgPath) {
		this.rUserImgPath = rUserImgPath;
	}

	public String getrUserName() {
		return rUserName;
	}

	public void setrUserName(String rUserName) {
		this.rUserName = rUserName;
	}

	public String getrUserEmail() {
		return rUserEmail;
	}

	public void setrUserEmail(String rUserEmail) {
		this.rUserEmail = rUserEmail;
	}

	public String getrUserIdentification() {
		return rUserIdentification;
	}

	public void setrUserIdentification(String rUserIdentification) {
		this.rUserIdentification = rUserIdentification;
	}

	public String getrUserPassword() {
		return rUserPassword;
	}

	public void setrUserPassword(String rUserPassword) {
		this.rUserPassword = rUserPassword;
	}

	public String getrUserPhone() {
		return rUserPhone;
	}

	public void setrUserPhone(String rUserPhone) {
		this.rUserPhone = rUserPhone;
	}

	public String getrUserNickname() {
		return rUserNickname;
	}

	public void setrUserNickname(String rUserNickname) {
		this.rUserNickname = rUserNickname;
	}

	public String getrUserAddress() {
		return rUserAddress;
	}

	public void setrUserAddress(String rUserAddress) {
		this.rUserAddress = rUserAddress;
	}

	public String getrUserDetailAddress() {
		return rUserDetailAddress;
	}

	public void setrUserDetailAddress(String rUserDetailAddress) {
		this.rUserDetailAddress = rUserDetailAddress;
	}

	public String getrUserPostalCode() {
		return rUserPostalCode;
	}

	public void setrUserPostalCode(String rUserPostalCode) {
		this.rUserPostalCode = rUserPostalCode;
	}

	public int getrUserSnsOk() {
		return rUserSnsOk;
	}

	public void setrUserSnsOk(int rUserSnsOk) {
		this.rUserSnsOk = rUserSnsOk;
	}

	public int getrUserMailOk() {
		return rUserMailOk;
	}

	public void setrUserMailOk(int rUserMailOk) {
		this.rUserMailOk = rUserMailOk;
	}

	public int getrUserAgreementOk() {
		return rUserAgreementOk;
	}

	public void setrUserAgreementOk(int rUserAgreementOk) {
		this.rUserAgreementOk = rUserAgreementOk;
	}

	public String getrUserIntroduce() {
		return rUserIntroduce;
	}

	public void setrUserIntroduce(String rUserIntroduce) {
		this.rUserIntroduce = rUserIntroduce;
	}

	public String getrUserRecode() {
		return rUserRecode;
	}

	public void setrUserRecode(String rUserRecode) {
		this.rUserRecode = rUserRecode;
	}

	public String getrUserInstagram() {
		return rUserInstagram;
	}

	public void setrUserInstagram(String rUserInstagram) {
		this.rUserInstagram = rUserInstagram;
	}

	public String getrUserYoutube() {
		return rUserYoutube;
	}

	public void setrUserYoutube(String rUserYoutube) {
		this.rUserYoutube = rUserYoutube;
	}

	public String getrUserBlog() {
		return rUserBlog;
	}

	public void setrUserBlog(String rUserBlog) {
		this.rUserBlog = rUserBlog;
	}

	public String getrUserKakao() {
		return rUserKakao;
	}

	public void setrUserKakao(String rUserKakao) {
		this.rUserKakao = rUserKakao;
	}

	public String getrUserGoogle() {
		return rUserGoogle;
	}

	public void setrUserGoogle(String rUserGoogle) {
		this.rUserGoogle = rUserGoogle;
	}

	public String getrUserNaver() {
		return rUserNaver;
	}

	public void setrUserNaver(String rUserNaver) {
		this.rUserNaver = rUserNaver;
	}

	public int getrUserWriterOk() {
		return rUserWriterOk;
	}

	public void setrUserWriterOk(int rUserWriterOk) {
		this.rUserWriterOk = rUserWriterOk;
	}

	public int getrUserAdminOk() {
		return rUserAdminOk;
	}

	public void setrUserAdminOk(int rUserAdminOk) {
		this.rUserAdminOk = rUserAdminOk;
	}

	public int getrUserBanOk() {
		return rUserBanOk;
	}

	public void setrUserBanOk(int rUserBanOk) {
		this.rUserBanOk = rUserBanOk;
	}

	public Long getRmajorId() {
		return rmajorId;
	}

	public void setRmajorId(Long rmajorId) {
		this.rmajorId = rmajorId;
	}

	public String getRuserMajorImgName() {
		return ruserMajorImgName;
	}

	public void setRuserMajorImgName(String ruserMajorImgName) {
		this.ruserMajorImgName = ruserMajorImgName;
	}

	public String getRuserMajorImgPath() {
		return ruserMajorImgPath;
	}

	public void setRuserMajorImgPath(String ruserMajorImgPath) {
		this.ruserMajorImgPath = ruserMajorImgPath;
	}

	public String getMailTitle() {
		return mailTitle;
	}

	public void setMailTitle(String mailTitle) {
		this.mailTitle = mailTitle;
	}

	public String getMailContents() {
		return mailContents;
	}

	public void setMailContents(String mailContents) {
		this.mailContents = mailContents;
	}

	public Timestamp getMailSendTime() {
		return mailSendTime;
	}

	public void setMailSendTime(Timestamp mailSendTime) {
		this.mailSendTime = mailSendTime;
	}

	public int getMailOpenOk() {
		return mailOpenOk;
	}

	public void setMailOpenOk(int mailOpenOk) {
		this.mailOpenOk = mailOpenOk;
	}

	public Long getSendUserId() {
		return sendUserId;
	}

	public void setSendUserId(Long sendUserId) {
		this.sendUserId = sendUserId;
	}

	public Long getReceiveUserId() {
		return receiveUserId;
	}

	public void setReceiveUserId(Long receiveUserId) {
		this.receiveUserId = receiveUserId;
	}

	@Override
	public String toString() {
		return "MailDTO [Id=" + Id + ", sId=" + sId + ", sUserImgName=" + sUserImgName + ", sUserImgPath="
				+ sUserImgPath + ", sUserName=" + sUserName + ", sUserEmail=" + sUserEmail + ", sUserIdentification="
				+ sUserIdentification + ", sUserPassword=" + sUserPassword + ", sUserPhone=" + sUserPhone
				+ ", sUserNickname=" + sUserNickname + ", sUserAddress=" + sUserAddress + ", sUserDetailAddress="
				+ sUserDetailAddress + ", sUserPostalCode=" + sUserPostalCode + ", sUserSnsOk=" + sUserSnsOk
				+ ", sUserMailOk=" + sUserMailOk + ", sUserAgreementOk=" + sUserAgreementOk + ", sUserIntroduce="
				+ sUserIntroduce + ", sUserRecode=" + sUserRecode + ", sUserInstagram=" + sUserInstagram
				+ ", sUserYoutube=" + sUserYoutube + ", sUserBlog=" + sUserBlog + ", sUserKakao=" + sUserKakao
				+ ", sUserGoogle=" + sUserGoogle + ", sUserNaver=" + sUserNaver + ", sUserWriterOk=" + sUserWriterOk
				+ ", sUserAdminOk=" + sUserAdminOk + ", sUserBanOk=" + sUserBanOk + ", smajorId=" + smajorId
				+ ", suserMajorImgName=" + suserMajorImgName + ", suserMajorImgPath=" + suserMajorImgPath + ", rId="
				+ rId + ", rUserImgName=" + rUserImgName + ", rUserImgPath=" + rUserImgPath + ", rUserName=" + rUserName
				+ ", rUserEmail=" + rUserEmail + ", rUserIdentification=" + rUserIdentification + ", rUserPassword="
				+ rUserPassword + ", rUserPhone=" + rUserPhone + ", rUserNickname=" + rUserNickname + ", rUserAddress="
				+ rUserAddress + ", rUserDetailAddress=" + rUserDetailAddress + ", rUserPostalCode=" + rUserPostalCode
				+ ", rUserSnsOk=" + rUserSnsOk + ", rUserMailOk=" + rUserMailOk + ", rUserAgreementOk="
				+ rUserAgreementOk + ", rUserIntroduce=" + rUserIntroduce + ", rUserRecode=" + rUserRecode
				+ ", rUserInstagram=" + rUserInstagram + ", rUserYoutube=" + rUserYoutube + ", rUserBlog=" + rUserBlog
				+ ", rUserKakao=" + rUserKakao + ", rUserGoogle=" + rUserGoogle + ", rUserNaver=" + rUserNaver
				+ ", rUserWriterOk=" + rUserWriterOk + ", rUserAdminOk=" + rUserAdminOk + ", rUserBanOk=" + rUserBanOk
				+ ", rmajorId=" + rmajorId + ", ruserMajorImgName=" + ruserMajorImgName + ", ruserMajorImgPath="
				+ ruserMajorImgPath + ", mailTitle=" + mailTitle + ", mailContents=" + mailContents + ", mailSendTime="
				+ mailSendTime + ", mailOpenOk=" + mailOpenOk + ", sendUserId=" + sendUserId + ", receiveUserId="
				+ receiveUserId + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(Id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MailDTO other = (MailDTO) obj;
		return Objects.equals(Id, other.Id);
	}

}