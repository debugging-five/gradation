package com.app.dto;

import java.sql.Date;
import java.util.Objects;

public class UniversityExhibitionDTO {
//	user
	private Long id; // Pk
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
	private String userWriterStatus;
	private String userUniversityStatus;
	
//	university
	private String universityName;
	private String universityLocation;
	private String universityLogoImgName;
	private String universityLogoImgPath;
	private String universityHomepage;
	
//	UniversityExhibition
	private Date universityExhibitionDate;
	private String universityExhibitionState;
	private String universityExhibitionTitle;
	private String universityExhibitionLocation;
	private String universityExhibitionStatus;
	
//	UniversityExhibitionImg
	private String universityExhibitionImgName;
	private String universityExhibitionImgPath;
	private Long universityExhibitionId;
	
	public UniversityExhibitionDTO() {;}

	public UniversityExhibitionDTO(Long id, String userImgName, String userImgPath, String userName, String userEmail,
			String userIdentification, String userPassword, String userPhone, String userNickname, String userAddress,
			String userDetailAddress, String userPostalCode, int userSnsOk, int userMailOk, int userAgreementOk,
			String userIntroduce, String userRecode, String userInstagram, String userYoutube, String userBlog,
			String userKakao, String userGoogle, String userNaver, int userWriterOk, int userAdminOk, int userBanOk,
			Long majorId, String userMajorImgName, String userMajorImgPath, String userWriterStatus,
			String userUniversityStatus, String universityName, String universityLocation, String universityLogoImgName,
			String universityLogoImgPath, String universityHomepage, Date universityExhibitionDate,
			String universityExhibitionState, String universityExhibitionTitle, String universityExhibitionLocation,
			String universityExhibitionStatus, String universityExhibitionImgName, String universityExhibitionImgPath,
			Long universityExhibitionId) {
		this.id = id;
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
		this.userWriterStatus = userWriterStatus;
		this.userUniversityStatus = userUniversityStatus;
		this.universityName = universityName;
		this.universityLocation = universityLocation;
		this.universityLogoImgName = universityLogoImgName;
		this.universityLogoImgPath = universityLogoImgPath;
		this.universityHomepage = universityHomepage;
		this.universityExhibitionDate = universityExhibitionDate;
		this.universityExhibitionState = universityExhibitionState;
		this.universityExhibitionTitle = universityExhibitionTitle;
		this.universityExhibitionLocation = universityExhibitionLocation;
		this.universityExhibitionStatus = universityExhibitionStatus;
		this.universityExhibitionImgName = universityExhibitionImgName;
		this.universityExhibitionImgPath = universityExhibitionImgPath;
		this.universityExhibitionId = universityExhibitionId;
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

	public String getUserWriterStatus() {
		return userWriterStatus;
	}

	public void setUserWriterStatus(String userWriterStatus) {
		this.userWriterStatus = userWriterStatus;
	}

	public String getUserUniversityStatus() {
		return userUniversityStatus;
	}

	public void setUserUniversityStatus(String userUniversityStatus) {
		this.userUniversityStatus = userUniversityStatus;
	}

	public String getUniversityName() {
		return universityName;
	}

	public void setUniversityName(String universityName) {
		this.universityName = universityName;
	}

	public String getUniversityLocation() {
		return universityLocation;
	}

	public void setUniversityLocation(String universityLocation) {
		this.universityLocation = universityLocation;
	}

	public String getUniversityLogoImgName() {
		return universityLogoImgName;
	}

	public void setUniversityLogoImgName(String universityLogoImgName) {
		this.universityLogoImgName = universityLogoImgName;
	}

	public String getUniversityLogoImgPath() {
		return universityLogoImgPath;
	}

	public void setUniversityLogoImgPath(String universityLogoImgPath) {
		this.universityLogoImgPath = universityLogoImgPath;
	}

	public String getUniversityHomepage() {
		return universityHomepage;
	}

	public void setUniversityHomepage(String universityHomepage) {
		this.universityHomepage = universityHomepage;
	}

	public Date getUniversityExhibitionDate() {
		return universityExhibitionDate;
	}

	public void setUniversityExhibitionDate(Date universityExhibitionDate) {
		this.universityExhibitionDate = universityExhibitionDate;
	}

	public String getUniversityExhibitionState() {
		return universityExhibitionState;
	}

	public void setUniversityExhibitionState(String universityExhibitionState) {
		this.universityExhibitionState = universityExhibitionState;
	}

	public String getUniversityExhibitionTitle() {
		return universityExhibitionTitle;
	}

	public void setUniversityExhibitionTitle(String universityExhibitionTitle) {
		this.universityExhibitionTitle = universityExhibitionTitle;
	}

	public String getUniversityExhibitionLocation() {
		return universityExhibitionLocation;
	}

	public void setUniversityExhibitionLocation(String universityExhibitionLocation) {
		this.universityExhibitionLocation = universityExhibitionLocation;
	}

	public String getUniversityExhibitionStatus() {
		return universityExhibitionStatus;
	}

	public void setUniversityExhibitionStatus(String universityExhibitionStatus) {
		this.universityExhibitionStatus = universityExhibitionStatus;
	}

	public String getUniversityExhibitionImgName() {
		return universityExhibitionImgName;
	}

	public void setUniversityExhibitionImgName(String universityExhibitionImgName) {
		this.universityExhibitionImgName = universityExhibitionImgName;
	}

	public String getUniversityExhibitionImgPath() {
		return universityExhibitionImgPath;
	}

	public void setUniversityExhibitionImgPath(String universityExhibitionImgPath) {
		this.universityExhibitionImgPath = universityExhibitionImgPath;
	}

	public Long getUniversityExhibitionId() {
		return universityExhibitionId;
	}

	public void setUniversityExhibitionId(Long universityExhibitionId) {
		this.universityExhibitionId = universityExhibitionId;
	}

	@Override
	public String toString() {
		return "UniversityExhibitionDTO [id=" + id + ", userImgName=" + userImgName + ", userImgPath=" + userImgPath
				+ ", userName=" + userName + ", userEmail=" + userEmail + ", userIdentification=" + userIdentification
				+ ", userPassword=" + userPassword + ", userPhone=" + userPhone + ", userNickname=" + userNickname
				+ ", userAddress=" + userAddress + ", userDetailAddress=" + userDetailAddress + ", userPostalCode="
				+ userPostalCode + ", userSnsOk=" + userSnsOk + ", userMailOk=" + userMailOk + ", userAgreementOk="
				+ userAgreementOk + ", userIntroduce=" + userIntroduce + ", userRecode=" + userRecode
				+ ", userInstagram=" + userInstagram + ", userYoutube=" + userYoutube + ", userBlog=" + userBlog
				+ ", userKakao=" + userKakao + ", userGoogle=" + userGoogle + ", userNaver=" + userNaver
				+ ", userWriterOk=" + userWriterOk + ", userAdminOk=" + userAdminOk + ", userBanOk=" + userBanOk
				+ ", majorId=" + majorId + ", userMajorImgName=" + userMajorImgName + ", userMajorImgPath="
				+ userMajorImgPath + ", userWriterStatus=" + userWriterStatus + ", userUniversityStatus="
				+ userUniversityStatus + ", universityName=" + universityName + ", universityLocation="
				+ universityLocation + ", universityLogoImgName=" + universityLogoImgName + ", universityLogoImgPath="
				+ universityLogoImgPath + ", universityHomepage=" + universityHomepage + ", universityExhibitionDate="
				+ universityExhibitionDate + ", universityExhibitionState=" + universityExhibitionState
				+ ", universityExhibitionTitle=" + universityExhibitionTitle + ", universityExhibitionLocation="
				+ universityExhibitionLocation + ", universityExhibitionStatus=" + universityExhibitionStatus
				+ ", universityExhibitionImgName=" + universityExhibitionImgName + ", universityExhibitionImgPath="
				+ universityExhibitionImgPath + ", universityExhibitionId=" + universityExhibitionId + "]";
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
		UniversityExhibitionDTO other = (UniversityExhibitionDTO) obj;
		return Objects.equals(id, other.id);
	}


}
