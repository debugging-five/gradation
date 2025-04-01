package com.app.dto;

import java.sql.Timestamp;
import java.util.Objects;

public class QnaDTO {
//	qnaVO
	private Long id;
	private String qnaTitle;
	private String qnaContent;
	private Timestamp qnaTime;
	private String qnaImgName;
	private String qnaImgPath;
	private Long userId;
	
//	QnaAnswerVO
	private String qnaAnswerTitle;
	private String qnaAnswerContent;
	private Timestamp qnaAnswerTime;
	private Long qnaId;
	
//	UserVO
	private String userImgName;
	private String userImgPath;
	private String userName;
	private String userEmail;
	private String userIdentification;
	private String userPassword;
	private String userPhone;
	private String userNickname;
	private String userAddress;
	private String userDetailAddress;
	private String userPostalCode;
	private int userSnsOk;
	private int userMailOk;
	private int userAgreementOk;
	private String userIntroduce;
	private String userRecode;
	private String userInstagram;
	private String userYoutube;
	private String userBlog;
	private String userKakao;
	private String userGoogle;
	private String userNaver;
	private int userWriterOk;
	private int userAdminOk;
	private int userBanOk;
	private Long majorId;
	private String userMajorImgName;
	private String userMajorImgPath;
	
	public QnaDTO() {;}

	public QnaDTO(Long id, String qnaTitle, String qnaContent, Timestamp qnaTime, String qnaImgName, String qnaImgPath,
			Long userId, String qnaAnswerTitle, String qnaAnswerContent, Timestamp qnaAnswerTime, Long qnaId,
			String userImgName, String userImgPath, String userName, String userEmail, String userIdentification,
			String userPassword, String userPhone, String userNickname, String userAddress, String userDetailAddress,
			String userPostalCode, int userSnsOk, int userMailOk, int userAgreementOk, String userIntroduce,
			String userRecode, String userInstagram, String userYoutube, String userBlog, String userKakao,
			String userGoogle, String userNaver, int userWriterOk, int userAdminOk, int userBanOk, Long majorId,
			String userMajorImgName, String userMajorImgPath) {
		this.id = id;
		this.qnaTitle = qnaTitle;
		this.qnaContent = qnaContent;
		this.qnaTime = qnaTime;
		this.qnaImgName = qnaImgName;
		this.qnaImgPath = qnaImgPath;
		this.userId = userId;
		this.qnaAnswerTitle = qnaAnswerTitle;
		this.qnaAnswerContent = qnaAnswerContent;
		this.qnaAnswerTime = qnaAnswerTime;
		this.qnaId = qnaId;
		this.userImgName = userImgName;
		this.userImgPath = userImgPath;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userIdentification = userIdentification;
		this.userPassword = userPassword;
		this.userPhone = userPhone;
		this.userNickname = userNickname;
		this.userAddress = userAddress;
		this.userDetailAddress = userDetailAddress;
		this.userPostalCode = userPostalCode;
		this.userSnsOk = userSnsOk;
		this.userMailOk = userMailOk;
		this.userAgreementOk = userAgreementOk;
		this.userIntroduce = userIntroduce;
		this.userRecode = userRecode;
		this.userInstagram = userInstagram;
		this.userYoutube = userYoutube;
		this.userBlog = userBlog;
		this.userKakao = userKakao;
		this.userGoogle = userGoogle;
		this.userNaver = userNaver;
		this.userWriterOk = userWriterOk;
		this.userAdminOk = userAdminOk;
		this.userBanOk = userBanOk;
		this.majorId = majorId;
		this.userMajorImgName = userMajorImgName;
		this.userMajorImgPath = userMajorImgPath;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getQnaTitle() {
		return qnaTitle;
	}

	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	public String getQnaContent() {
		return qnaContent;
	}

	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}

	public Timestamp getQnaTime() {
		return qnaTime;
	}

	public void setQnaTime(Timestamp qnaTime) {
		this.qnaTime = qnaTime;
	}

	public String getQnaImgName() {
		return qnaImgName;
	}

	public void setQnaImgName(String qnaImgName) {
		this.qnaImgName = qnaImgName;
	}

	public String getQnaImgPath() {
		return qnaImgPath;
	}

	public void setQnaImgPath(String qnaImgPath) {
		this.qnaImgPath = qnaImgPath;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getQnaAnswerTitle() {
		return qnaAnswerTitle;
	}

	public void setQnaAnswerTitle(String qnaAnswerTitle) {
		this.qnaAnswerTitle = qnaAnswerTitle;
	}

	public String getQnaAnswerContent() {
		return qnaAnswerContent;
	}

	public void setQnaAnswerContent(String qnaAnswerContent) {
		this.qnaAnswerContent = qnaAnswerContent;
	}

	public Timestamp getQnaAnswerTime() {
		return qnaAnswerTime;
	}

	public void setQnaAnswerTime(Timestamp qnaAnswerTime) {
		this.qnaAnswerTime = qnaAnswerTime;
	}

	public Long getQnaId() {
		return qnaId;
	}

	public void setQnaId(Long qnaId) {
		this.qnaId = qnaId;
	}

	public String getUserImgName() {
		return userImgName;
	}

	public void setUserImgName(String userImgName) {
		this.userImgName = userImgName;
	}

	public String getUserImgPath() {
		return userImgPath;
	}

	public void setUserImgPath(String userImgPath) {
		this.userImgPath = userImgPath;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserIdentification() {
		return userIdentification;
	}

	public void setUserIdentification(String userIdentification) {
		this.userIdentification = userIdentification;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserDetailAddress() {
		return userDetailAddress;
	}

	public void setUserDetailAddress(String userDetailAddress) {
		this.userDetailAddress = userDetailAddress;
	}

	public String getUserPostalCode() {
		return userPostalCode;
	}

	public void setUserPostalCode(String userPostalCode) {
		this.userPostalCode = userPostalCode;
	}

	public int getUserSnsOk() {
		return userSnsOk;
	}

	public void setUserSnsOk(int userSnsOk) {
		this.userSnsOk = userSnsOk;
	}

	public int getUserMailOk() {
		return userMailOk;
	}

	public void setUserMailOk(int userMailOk) {
		this.userMailOk = userMailOk;
	}

	public int getUserAgreementOk() {
		return userAgreementOk;
	}

	public void setUserAgreementOk(int userAgreementOk) {
		this.userAgreementOk = userAgreementOk;
	}

	public String getUserIntroduce() {
		return userIntroduce;
	}

	public void setUserIntroduce(String userIntroduce) {
		this.userIntroduce = userIntroduce;
	}

	public String getUserRecode() {
		return userRecode;
	}

	public void setUserRecode(String userRecode) {
		this.userRecode = userRecode;
	}

	public String getUserInstagram() {
		return userInstagram;
	}

	public void setUserInstagram(String userInstagram) {
		this.userInstagram = userInstagram;
	}

	public String getUserYoutube() {
		return userYoutube;
	}

	public void setUserYoutube(String userYoutube) {
		this.userYoutube = userYoutube;
	}

	public String getUserBlog() {
		return userBlog;
	}

	public void setUserBlog(String userBlog) {
		this.userBlog = userBlog;
	}

	public String getUserKakao() {
		return userKakao;
	}

	public void setUserKakao(String userKakao) {
		this.userKakao = userKakao;
	}

	public String getUserGoogle() {
		return userGoogle;
	}

	public void setUserGoogle(String userGoogle) {
		this.userGoogle = userGoogle;
	}

	public String getUserNaver() {
		return userNaver;
	}

	public void setUserNaver(String userNaver) {
		this.userNaver = userNaver;
	}

	public int getUserWriterOk() {
		return userWriterOk;
	}

	public void setUserWriterOk(int userWriterOk) {
		this.userWriterOk = userWriterOk;
	}

	public int getUserAdminOk() {
		return userAdminOk;
	}

	public void setUserAdminOk(int userAdminOk) {
		this.userAdminOk = userAdminOk;
	}

	public int getUserBanOk() {
		return userBanOk;
	}

	public void setUserBanOk(int userBanOk) {
		this.userBanOk = userBanOk;
	}

	public Long getMajorId() {
		return majorId;
	}

	public void setMajorId(Long majorId) {
		this.majorId = majorId;
	}

	public String getUserMajorImgName() {
		return userMajorImgName;
	}

	public void setUserMajorImgName(String userMajorImgName) {
		this.userMajorImgName = userMajorImgName;
	}

	public String getUserMajorImgPath() {
		return userMajorImgPath;
	}

	public void setUserMajorImgPath(String userMajorImgPath) {
		this.userMajorImgPath = userMajorImgPath;
	}

	@Override
	public String toString() {
		return "QnaDTO [id=" + id + ", qnaTitle=" + qnaTitle + ", qnaContent=" + qnaContent + ", qnaTime=" + qnaTime
				+ ", qnaImgName=" + qnaImgName + ", qnaImgPath=" + qnaImgPath + ", userId=" + userId
				+ ", qnaAnswerTitle=" + qnaAnswerTitle + ", qnaAnswerContent=" + qnaAnswerContent + ", qnaAnswerTime="
				+ qnaAnswerTime + ", qnaId=" + qnaId + ", userImgName=" + userImgName + ", userImgPath=" + userImgPath
				+ ", userName=" + userName + ", userEmail=" + userEmail + ", userIdentification=" + userIdentification
				+ ", userPassword=" + userPassword + ", userPhone=" + userPhone + ", userNickname=" + userNickname
				+ ", userAddress=" + userAddress + ", userDetailAddress=" + userDetailAddress + ", userPostalCode="
				+ userPostalCode + ", userSnsOk=" + userSnsOk + ", userMailOk=" + userMailOk + ", userAgreementOk="
				+ userAgreementOk + ", userIntroduce=" + userIntroduce + ", userRecode=" + userRecode
				+ ", userInstagram=" + userInstagram + ", userYoutube=" + userYoutube + ", userBlog=" + userBlog
				+ ", userKakao=" + userKakao + ", userGoogle=" + userGoogle + ", userNaver=" + userNaver
				+ ", userWriterOk=" + userWriterOk + ", userAdminOk=" + userAdminOk + ", userBanOk=" + userBanOk
				+ ", majorId=" + majorId + ", userMajorImgName=" + userMajorImgName + ", userMajorImgPath="
				+ userMajorImgPath + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		QnaDTO other = (QnaDTO) obj;
		return Objects.equals(id, other.id);
	}
}
