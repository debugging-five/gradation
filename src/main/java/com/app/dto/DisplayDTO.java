package com.app.dto;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.Objects;

public class DisplayDTO {
	
//	TBL_USER
	private Long id; // Pk
	private String userImgName;
	private String userImgPath;
	private String userName;
	private String userEmail;
	private String uUserId;
	private String userPassword;
	private String userPhone;
	private String userNickname;
	private String userAddress;
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
	private Long universityId; // 학교 테이블의 id 참조값
	
//	TBL_ART
	private String artCategoty;
	private String artMeterial;
	private String artSize;
	private String artDescription;
	private Date artDate;
	private Date artStartDate;
	private Date artEndDate;
	
//	TBL_ART_IMAGE
	private String artImgName;
	private String artImgPath;
	private Long artId;
	
//	TBL_REPLY
	private Long artPostId;
	private String replyContents;
	private Date replyDate;
	
//	TBL_MAIL
	private String mailTitle;
	private String mailContents;
	private Timestamp mailSendTime;
	private int mailIsopen;
	private Long sendUserId;
	private Long recieveUserId;
	
//	TBL_ART_LIKE
	private Timestamp artLikeTime;
	
//	TBL_REPLY_LIKE
	private Long replyId;
	private Timestamp replyLikeTime;
	
//	TBL_ART_POST
	private Timestamp artPostDate;
	
	public DisplayDTO() {;}
	
	public DisplayDTO(Long id, String userImgName, String userImgPath, String userName, String userEmail, String uUserId,
			String userPassword, String userPhone, String userNickname, String userAddress, String userPostalCode,
			int userSnsOk, int userMailOk, int userAgreementOk, String userIntroduce, String userRecode,
			String userInstagram, String userYoutube, String userBlog, String userKakao, String userGoogle,
			String userNaver, int userWriterOk, int userAdminOk, int userBanOk, Long universityId, String artCategoty,
			String artMeterial, String artSize, String artDescription, Date artDate, Date artStartDate, Date artEndDate,
			String artImgName, String artImgPath, Long artId, Long artPostId, String replyContents, Date replyDate,
			String mailTitle, String mailContents, Timestamp mailSendTime, int mailIsopen, Long sendUserId,
			Long recieveUserId, Timestamp artLikeTime, Long replyId, Timestamp replyLikeTime, Timestamp artPostDate) {
		this.id = id;
		this.userImgName = userImgName;
		this.userImgPath = userImgPath;
		this.userName = userName;
		this.userEmail = userEmail;
		this.uUserId = uUserId;
		this.userPassword = userPassword;
		this.userPhone = userPhone;
		this.userNickname = userNickname;
		this.userAddress = userAddress;
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
		this.universityId = universityId;
		this.artCategoty = artCategoty;
		this.artMeterial = artMeterial;
		this.artSize = artSize;
		this.artDescription = artDescription;
		this.artDate = artDate;
		this.artStartDate = artStartDate;
		this.artEndDate = artEndDate;
		this.artImgName = artImgName;
		this.artImgPath = artImgPath;
		this.artId = artId;
		this.artPostId = artPostId;
		this.replyContents = replyContents;
		this.replyDate = replyDate;
		this.mailTitle = mailTitle;
		this.mailContents = mailContents;
		this.mailSendTime = mailSendTime;
		this.mailIsopen = mailIsopen;
		this.sendUserId = sendUserId;
		this.recieveUserId = recieveUserId;
		this.artLikeTime = artLikeTime;
		this.replyId = replyId;
		this.replyLikeTime = replyLikeTime;
		this.artPostDate = artPostDate;
	}

	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
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
	
	public String getuUserId() {
		return uUserId;
	}
	
	public void setuUserId(String uUserId) {
		this.uUserId = uUserId;
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
	
	public Long getUniversityId() {
		return universityId;
	}
	
	public void setUniversityId(Long universityId) {
		this.universityId = universityId;
	}
	
	public String getArtCategoty() {
		return artCategoty;
	}
	
	public void setArtCategoty(String artCategoty) {
		this.artCategoty = artCategoty;
	}
	
	public String getArtMeterial() {
		return artMeterial;
	}
	
	public void setArtMeterial(String artMeterial) {
		this.artMeterial = artMeterial;
	}
	
	public String getArtSize() {
		return artSize;
	}
	
	public void setArtSize(String artSize) {
		this.artSize = artSize;
	}
	
	public String getArtDescription() {
		return artDescription;
	}
	
	public void setArtDescription(String artDescription) {
		this.artDescription = artDescription;
	}
	
	public Date getArtDate() {
		return artDate;
	}
	
	public void setArtDate(Date artDate) {
		this.artDate = artDate;
	}
	
	public Date getArtStartDate() {
		return artStartDate;
	}
	
	public void setArtStartDate(Date artStartDate) {
		this.artStartDate = artStartDate;
	}
	
	public Date getArtEndDate() {
		return artEndDate;
	}
	
	public void setArtEndDate(Date artEndDate) {
		this.artEndDate = artEndDate;
	}
	
	public String getArtImgName() {
		return artImgName;
	}
	
	public void setArtImgName(String artImgName) {
		this.artImgName = artImgName;
	}
	
	public String getArtImgPath() {
		return artImgPath;
	}
	
	public void setArtImgPath(String artImgPath) {
		this.artImgPath = artImgPath;
	}
	
	public Long getArtId() {
		return artId;
	}
	
	public void setArtId(Long artId) {
		this.artId = artId;
	}
	
	public Long getArtPostId() {
		return artPostId;
	}
	
	public void setArtPostId(Long artPostId) {
		this.artPostId = artPostId;
	}
	
	public String getReplyContents() {
		return replyContents;
	}
	
	public void setReplyContents(String replyContents) {
		this.replyContents = replyContents;
	}
	
	public Date getReplyDate() {
		return replyDate;
	}
	
	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
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
	
	public int getMailIsopen() {
		return mailIsopen;
	}
	
	public void setMailIsopen(int mailIsopen) {
		this.mailIsopen = mailIsopen;
	}
	
	public Long getSendUserId() {
		return sendUserId;
	}
	
	public void setSendUserId(Long sendUserId) {
		this.sendUserId = sendUserId;
	}
	
	public Long getRecieveUserId() {
		return recieveUserId;
	}
	
	public void setRecieveUserId(Long recieveUserId) {
		this.recieveUserId = recieveUserId;
	}
	
	public Timestamp getArtLikeTime() {
		return artLikeTime;
	}
	
	public void setArtLikeTime(Timestamp artLikeTime) {
		this.artLikeTime = artLikeTime;
	}
	
	public Long getReplyId() {
		return replyId;
	}
	
	public void setReplyId(Long replyId) {
		this.replyId = replyId;
	}
	
	public Timestamp getReplyLikeTime() {
		return replyLikeTime;
	}
	
	public void setReplyLikeTime(Timestamp replyLikeTime) {
		this.replyLikeTime = replyLikeTime;
	}
	
	public Timestamp getArtPostDate() {
		return artPostDate;
	}
	
	public void setArtPostDate(Timestamp artPostDate) {
		this.artPostDate = artPostDate;
	}
	
	@Override
	public String toString() {
		return "DisplayDTO [id=" + id + ", userImgName=" + userImgName + ", userImgPath=" + userImgPath + ", userName="
				+ userName + ", userEmail=" + userEmail + ", uUserId=" + uUserId + ", userPassword=" + userPassword
				+ ", userPhone=" + userPhone + ", userNickname=" + userNickname + ", userAddress=" + userAddress
				+ ", userPostalCode=" + userPostalCode + ", userSnsOk=" + userSnsOk + ", userMailOk=" + userMailOk
				+ ", userAgreementOk=" + userAgreementOk + ", userIntroduce=" + userIntroduce + ", userRecode=" + userRecode
				+ ", userInstagram=" + userInstagram + ", userYoutube=" + userYoutube + ", userBlog=" + userBlog
				+ ", userKakao=" + userKakao + ", userGoogle=" + userGoogle + ", userNaver=" + userNaver + ", userWriterOk="
				+ userWriterOk + ", userAdminOk=" + userAdminOk + ", userBanOk=" + userBanOk + ", universityId="
				+ universityId + ", artCategoty=" + artCategoty + ", artMeterial=" + artMeterial + ", artSize=" + artSize
				+ ", artDescription=" + artDescription + ", artDate=" + artDate + ", artStartDate=" + artStartDate
				+ ", artEndDate=" + artEndDate + ", artImgName=" + artImgName + ", artImgPath=" + artImgPath + ", artId="
				+ artId + ", artPostId=" + artPostId + ", replyContents=" + replyContents + ", replyDate=" + replyDate
				+ ", mailTitle=" + mailTitle + ", mailContents=" + mailContents + ", mailSendTime=" + mailSendTime
				+ ", mailIsopen=" + mailIsopen + ", sendUserId=" + sendUserId + ", recieveUserId=" + recieveUserId
				+ ", artLikeTime=" + artLikeTime + ", replyId=" + replyId + ", replyLikeTime=" + replyLikeTime
				+ ", artPostDate=" + artPostDate + "]";
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
		DisplayDTO other = (DisplayDTO) obj;
		return Objects.equals(id, other.id);
	}

}

