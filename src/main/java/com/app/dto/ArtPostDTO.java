package com.app.dto;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.Objects;

public class ArtPostDTO {
//	TBL_USER
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
	
//	TBL_ART
	private Long id;
	private String artTitle;
	private String artCategoty;
	private String artMeterial;
	private String artSize;
	private String artDescription;
	private Date artDate;
	private Date artStartDate;
	private Date artEndDate;
	private Long userId;
	
//	TBL_ART_POST
	private Timestamp artPostDate;
	private Long artId;
	
//	TBL_ART_IMG
	private String artImgName;
	private String artImgPath;
	

//	TBL_ART_LIKE
	private Timestamp artLikeTime;
	
//	TBL_REPLY
	private Long artPostId;
	private String replyContents;
	private Date replyDate;
	
//	TBL_REPLY_LIKE	
	private Long replyId;
	private Timestamp replyLikeTime;
	
	public ArtPostDTO() {;}

	public ArtPostDTO(String userImgName, String userImgPath, String userName, String userEmail, String uUserId,
			String userPassword, String userPhone, String userNickname, String userAddress, String userPostalCode,
			int userSnsOk, int userMailOk, int userAgreementOk, String userIntroduce, String userRecode,
			String userInstagram, String userYoutube, String userBlog, String userKakao, String userGoogle,
			String userNaver, int userWriterOk, int userAdminOk, int userBanOk, Long id, String artTitle,
			String artCategoty, String artMeterial, String artSize, String artDescription, Date artDate,
			Date artStartDate, Date artEndDate, Long userId, Timestamp artPostDate, Long artId, String artImgName,
			String artImgPath, Timestamp artLikeTime, Long artPostId, String replyContents, Date replyDate,
			Long replyId, Timestamp replyLikeTime) {
		super();
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
		this.id = id;
		this.artTitle = artTitle;
		this.artCategoty = artCategoty;
		this.artMeterial = artMeterial;
		this.artSize = artSize;
		this.artDescription = artDescription;
		this.artDate = artDate;
		this.artStartDate = artStartDate;
		this.artEndDate = artEndDate;
		this.userId = userId;
		this.artPostDate = artPostDate;
		this.artId = artId;
		this.artImgName = artImgName;
		this.artImgPath = artImgPath;
		this.artLikeTime = artLikeTime;
		this.artPostId = artPostId;
		this.replyContents = replyContents;
		this.replyDate = replyDate;
		this.replyId = replyId;
		this.replyLikeTime = replyLikeTime;
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

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getArtTitle() {
		return artTitle;
	}

	public void setArtTitle(String artTitle) {
		this.artTitle = artTitle;
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

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Timestamp getArtPostDate() {
		return artPostDate;
	}

	public void setArtPostDate(Timestamp artPostDate) {
		this.artPostDate = artPostDate;
	}

	public Long getArtId() {
		return artId;
	}

	public void setArtId(Long artId) {
		this.artId = artId;
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

	public Timestamp getArtLikeTime() {
		return artLikeTime;
	}

	public void setArtLikeTime(Timestamp artLikeTime) {
		this.artLikeTime = artLikeTime;
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

	@Override
	public String toString() {
		return "ArtPostDTO [userImgName=" + userImgName + ", userImgPath=" + userImgPath + ", userName=" + userName
				+ ", userEmail=" + userEmail + ", uUserId=" + uUserId + ", userPassword=" + userPassword
				+ ", userPhone=" + userPhone + ", userNickname=" + userNickname + ", userAddress=" + userAddress
				+ ", userPostalCode=" + userPostalCode + ", userSnsOk=" + userSnsOk + ", userMailOk=" + userMailOk
				+ ", userAgreementOk=" + userAgreementOk + ", userIntroduce=" + userIntroduce + ", userRecode="
				+ userRecode + ", userInstagram=" + userInstagram + ", userYoutube=" + userYoutube + ", userBlog="
				+ userBlog + ", userKakao=" + userKakao + ", userGoogle=" + userGoogle + ", userNaver=" + userNaver
				+ ", userWriterOk=" + userWriterOk + ", userAdminOk=" + userAdminOk + ", userBanOk=" + userBanOk
				+ ", id=" + id + ", artTitle=" + artTitle + ", artCategoty=" + artCategoty + ", artMeterial="
				+ artMeterial + ", artSize=" + artSize + ", artDescription=" + artDescription + ", artDate=" + artDate
				+ ", artStartDate=" + artStartDate + ", artEndDate=" + artEndDate + ", userId=" + userId
				+ ", artPostDate=" + artPostDate + ", artId=" + artId + ", artImgName=" + artImgName + ", artImgPath="
				+ artImgPath + ", artLikeTime=" + artLikeTime + ", artPostId=" + artPostId + ", replyContents="
				+ replyContents + ", replyDate=" + replyDate + ", replyId=" + replyId + ", replyLikeTime="
				+ replyLikeTime + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(artCategoty, artDate, artDescription, artEndDate, artId, artImgName, artImgPath,
				artLikeTime, artMeterial, artPostDate, artPostId, artSize, artStartDate, artTitle, id, replyContents,
				replyDate, replyId, replyLikeTime, uUserId, userAddress, userAdminOk, userAgreementOk, userBanOk,
				userBlog, userEmail, userGoogle, userId, userImgName, userImgPath, userInstagram, userIntroduce,
				userKakao, userMailOk, userName, userNaver, userNickname, userPassword, userPhone, userPostalCode,
				userRecode, userSnsOk, userWriterOk, userYoutube);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ArtPostDTO other = (ArtPostDTO) obj;
		return Objects.equals(artCategoty, other.artCategoty) && Objects.equals(artDate, other.artDate)
				&& Objects.equals(artDescription, other.artDescription) && Objects.equals(artEndDate, other.artEndDate)
				&& Objects.equals(artId, other.artId) && Objects.equals(artImgName, other.artImgName)
				&& Objects.equals(artImgPath, other.artImgPath) && Objects.equals(artLikeTime, other.artLikeTime)
				&& Objects.equals(artMeterial, other.artMeterial) && Objects.equals(artPostDate, other.artPostDate)
				&& Objects.equals(artPostId, other.artPostId) && Objects.equals(artSize, other.artSize)
				&& Objects.equals(artStartDate, other.artStartDate) && Objects.equals(artTitle, other.artTitle)
				&& Objects.equals(id, other.id) && Objects.equals(replyContents, other.replyContents)
				&& Objects.equals(replyDate, other.replyDate) && Objects.equals(replyId, other.replyId)
				&& Objects.equals(replyLikeTime, other.replyLikeTime) && Objects.equals(uUserId, other.uUserId)
				&& Objects.equals(userAddress, other.userAddress) && userAdminOk == other.userAdminOk
				&& userAgreementOk == other.userAgreementOk && userBanOk == other.userBanOk
				&& Objects.equals(userBlog, other.userBlog) && Objects.equals(userEmail, other.userEmail)
				&& Objects.equals(userGoogle, other.userGoogle) && Objects.equals(userId, other.userId)
				&& Objects.equals(userImgName, other.userImgName) && Objects.equals(userImgPath, other.userImgPath)
				&& Objects.equals(userInstagram, other.userInstagram)
				&& Objects.equals(userIntroduce, other.userIntroduce) && Objects.equals(userKakao, other.userKakao)
				&& userMailOk == other.userMailOk && Objects.equals(userName, other.userName)
				&& Objects.equals(userNaver, other.userNaver) && Objects.equals(userNickname, other.userNickname)
				&& Objects.equals(userPassword, other.userPassword) && Objects.equals(userPhone, other.userPhone)
				&& Objects.equals(userPostalCode, other.userPostalCode) && Objects.equals(userRecode, other.userRecode)
				&& userSnsOk == other.userSnsOk && userWriterOk == other.userWriterOk
				&& Objects.equals(userYoutube, other.userYoutube);
	}
	
	
}
