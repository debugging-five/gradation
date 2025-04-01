package com.app.dto;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.Objects;

public class AuctionDTO {
	
//	AuctionVO
	private Long id; // pk
	private Long artId; // 작품 테이블 id 참조키
	private Long userId; // 유저 테이블 id 참조키
	private Date auctionStartDate; // 경매 시작 시간
	private Long auctionStartPrice; // 시작가
	private Long auctionEstimatePrice; // 추정가
	private int auctionAttracted; // 본 필드는 경매낙찰여부 입니다. 0유찰 1낙찰
	private Long auctionBidPrice; // 낙찰가
	private Date auctionBidDate; // 경매 종료일
	
//	AuctionBiddingVO
	private int auctionBiddingPrice;
	private boolean auctionBiddingAutoOk;
	private Timestamp auctionBiddingTime;
	
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
	private String userWriterStatus;
	private String userUniversityStatus;
	
//	DeliveryVO
	private String deliveryAddress;
	private String deliveryDetailAddress;
	private String deliveryPostalCode;
	private String deliveryState;
	private String deliveryMessage;
	private String deliveryReceiver;
	private String deliveryPhone;
	private Long paymentId;
	
//	ArtVO
	private String artTitle;
	private String artCategoty;
	private String artMeterial;
	private String artSize;
	private String artDescription;
	private Date artDate;
	private Date artStartDate;
	private Date artEndDate;

//	PaymentVO
	private String paymentMethod;
	private int paymentAmount;
	private Timestamp paymentDate;
	private String paymentCode;
	
//	ArtImgVO
	private String artImgName;
	private String artImgPath;
	
	public AuctionDTO() {;}

	public AuctionDTO(Long id, Long artId, Long userId, Date auctionStartDate, Long auctionStartPrice,
			Long auctionEstimatePrice, int auctionAttracted, Long auctionBidPrice, Date auctionBidDate,
			int auctionBiddingPrice, boolean auctionBiddingAutoOk, Timestamp auctionBiddingTime, String userImgName,
			String userImgPath, String userName, String userEmail, String userIdentification, String userPassword,
			String userPhone, String userNickname, String userAddress, String userDetailAddress, String userPostalCode,
			int userSnsOk, int userMailOk, int userAgreementOk, String userIntroduce, String userRecode,
			String userInstagram, String userYoutube, String userBlog, String userKakao, String userGoogle,
			String userNaver, int userWriterOk, int userAdminOk, int userBanOk, Long majorId, String userMajorImgName,
			String userMajorImgPath, String userWriterStatus, String userUniversityStatus, String deliveryAddress,
			String deliveryDetailAddress, String deliveryPostalCode, String deliveryState, String deliveryMessage,
			String deliveryReceiver, String deliveryPhone, Long paymentId, String artTitle, String artCategoty,
			String artMeterial, String artSize, String artDescription, Date artDate, Date artStartDate, Date artEndDate,
			String paymentMethod, int paymentAmount, Timestamp paymentDate, String paymentCode, String artImgName,
			String artImgPath) {
		this.id = id;
		this.artId = artId;
		this.userId = userId;
		this.auctionStartDate = auctionStartDate;
		this.auctionStartPrice = auctionStartPrice;
		this.auctionEstimatePrice = auctionEstimatePrice;
		this.auctionAttracted = auctionAttracted;
		this.auctionBidPrice = auctionBidPrice;
		this.auctionBidDate = auctionBidDate;
		this.auctionBiddingPrice = auctionBiddingPrice;
		this.auctionBiddingAutoOk = auctionBiddingAutoOk;
		this.auctionBiddingTime = auctionBiddingTime;
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
		this.deliveryAddress = deliveryAddress;
		this.deliveryDetailAddress = deliveryDetailAddress;
		this.deliveryPostalCode = deliveryPostalCode;
		this.deliveryState = deliveryState;
		this.deliveryMessage = deliveryMessage;
		this.deliveryReceiver = deliveryReceiver;
		this.deliveryPhone = deliveryPhone;
		this.paymentId = paymentId;
		this.artTitle = artTitle;
		this.artCategoty = artCategoty;
		this.artMeterial = artMeterial;
		this.artSize = artSize;
		this.artDescription = artDescription;
		this.artDate = artDate;
		this.artStartDate = artStartDate;
		this.artEndDate = artEndDate;
		this.paymentMethod = paymentMethod;
		this.paymentAmount = paymentAmount;
		this.paymentDate = paymentDate;
		this.paymentCode = paymentCode;
		this.artImgName = artImgName;
		this.artImgPath = artImgPath;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getArtId() {
		return artId;
	}

	public void setArtId(Long artId) {
		this.artId = artId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Date getAuctionStartDate() {
		return auctionStartDate;
	}

	public void setAuctionStartDate(Date auctionStartDate) {
		this.auctionStartDate = auctionStartDate;
	}

	public Long getAuctionStartPrice() {
		return auctionStartPrice;
	}

	public void setAuctionStartPrice(Long auctionStartPrice) {
		this.auctionStartPrice = auctionStartPrice;
	}

	public Long getAuctionEstimatePrice() {
		return auctionEstimatePrice;
	}

	public void setAuctionEstimatePrice(Long auctionEstimatePrice) {
		this.auctionEstimatePrice = auctionEstimatePrice;
	}

	public int getAuctionAttracted() {
		return auctionAttracted;
	}

	public void setAuctionAttracted(int auctionAttracted) {
		this.auctionAttracted = auctionAttracted;
	}

	public Long getAuctionBidPrice() {
		return auctionBidPrice;
	}

	public void setAuctionBidPrice(Long auctionBidPrice) {
		this.auctionBidPrice = auctionBidPrice;
	}

	public Date getAuctionBidDate() {
		return auctionBidDate;
	}

	public void setAuctionBidDate(Date auctionBidDate) {
		this.auctionBidDate = auctionBidDate;
	}

	public int getAuctionBiddingPrice() {
		return auctionBiddingPrice;
	}

	public void setAuctionBiddingPrice(int auctionBiddingPrice) {
		this.auctionBiddingPrice = auctionBiddingPrice;
	}

	public boolean isAuctionBiddingAutoOk() {
		return auctionBiddingAutoOk;
	}

	public void setAuctionBiddingAutoOk(boolean auctionBiddingAutoOk) {
		this.auctionBiddingAutoOk = auctionBiddingAutoOk;
	}

	public Timestamp getAuctionBiddingTime() {
		return auctionBiddingTime;
	}

	public void setAuctionBiddingTime(Timestamp auctionBiddingTime) {
		this.auctionBiddingTime = auctionBiddingTime;
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

	public String getDeliveryAddress() {
		return deliveryAddress;
	}

	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}

	public String getDeliveryDetailAddress() {
		return deliveryDetailAddress;
	}

	public void setDeliveryDetailAddress(String deliveryDetailAddress) {
		this.deliveryDetailAddress = deliveryDetailAddress;
	}

	public String getDeliveryPostalCode() {
		return deliveryPostalCode;
	}

	public void setDeliveryPostalCode(String deliveryPostalCode) {
		this.deliveryPostalCode = deliveryPostalCode;
	}

	public String getDeliveryState() {
		return deliveryState;
	}

	public void setDeliveryState(String deliveryState) {
		this.deliveryState = deliveryState;
	}

	public String getDeliveryMessage() {
		return deliveryMessage;
	}

	public void setDeliveryMessage(String deliveryMessage) {
		this.deliveryMessage = deliveryMessage;
	}

	public String getDeliveryReceiver() {
		return deliveryReceiver;
	}

	public void setDeliveryReceiver(String deliveryReceiver) {
		this.deliveryReceiver = deliveryReceiver;
	}

	public String getDeliveryPhone() {
		return deliveryPhone;
	}

	public void setDeliveryPhone(String deliveryPhone) {
		this.deliveryPhone = deliveryPhone;
	}

	public Long getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(Long paymentId) {
		this.paymentId = paymentId;
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

	public String getPaymentMethod() {
		return paymentMethod;
	}

	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public int getPaymentAmount() {
		return paymentAmount;
	}

	public void setPaymentAmount(int paymentAmount) {
		this.paymentAmount = paymentAmount;
	}

	public Timestamp getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(Timestamp paymentDate) {
		this.paymentDate = paymentDate;
	}

	public String getPaymentCode() {
		return paymentCode;
	}

	public void setPaymentCode(String paymentCode) {
		this.paymentCode = paymentCode;
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

	@Override
	public String toString() {
		return "AuctionDTO [id=" + id + ", artId=" + artId + ", userId=" + userId + ", auctionStartDate="
				+ auctionStartDate + ", auctionStartPrice=" + auctionStartPrice + ", auctionEstimatePrice="
				+ auctionEstimatePrice + ", auctionAttracted=" + auctionAttracted + ", auctionBidPrice="
				+ auctionBidPrice + ", auctionBidDate=" + auctionBidDate + ", auctionBiddingPrice="
				+ auctionBiddingPrice + ", auctionBiddingAutoOk=" + auctionBiddingAutoOk + ", auctionBiddingTime="
				+ auctionBiddingTime + ", userImgName=" + userImgName + ", userImgPath=" + userImgPath + ", userName="
				+ userName + ", userEmail=" + userEmail + ", userIdentification=" + userIdentification
				+ ", userPassword=" + userPassword + ", userPhone=" + userPhone + ", userNickname=" + userNickname
				+ ", userAddress=" + userAddress + ", userDetailAddress=" + userDetailAddress + ", userPostalCode="
				+ userPostalCode + ", userSnsOk=" + userSnsOk + ", userMailOk=" + userMailOk + ", userAgreementOk="
				+ userAgreementOk + ", userIntroduce=" + userIntroduce + ", userRecode=" + userRecode
				+ ", userInstagram=" + userInstagram + ", userYoutube=" + userYoutube + ", userBlog=" + userBlog
				+ ", userKakao=" + userKakao + ", userGoogle=" + userGoogle + ", userNaver=" + userNaver
				+ ", userWriterOk=" + userWriterOk + ", userAdminOk=" + userAdminOk + ", userBanOk=" + userBanOk
				+ ", majorId=" + majorId + ", userMajorImgName=" + userMajorImgName + ", userMajorImgPath="
				+ userMajorImgPath + ", userWriterStatus=" + userWriterStatus + ", userUniversityStatus="
				+ userUniversityStatus + ", deliveryAddress=" + deliveryAddress + ", deliveryDetailAddress="
				+ deliveryDetailAddress + ", deliveryPostalCode=" + deliveryPostalCode + ", deliveryState="
				+ deliveryState + ", deliveryMessage=" + deliveryMessage + ", deliveryReceiver=" + deliveryReceiver
				+ ", deliveryPhone=" + deliveryPhone + ", paymentId=" + paymentId + ", artTitle=" + artTitle
				+ ", artCategoty=" + artCategoty + ", artMeterial=" + artMeterial + ", artSize=" + artSize
				+ ", artDescription=" + artDescription + ", artDate=" + artDate + ", artStartDate=" + artStartDate
				+ ", artEndDate=" + artEndDate + ", paymentMethod=" + paymentMethod + ", paymentAmount=" + paymentAmount
				+ ", paymentDate=" + paymentDate + ", paymentCode=" + paymentCode + ", artImgName=" + artImgName
				+ ", artImgPath=" + artImgPath + "]";
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
		AuctionDTO other = (AuctionDTO) obj;
		return Objects.equals(id, other.id);
	}


}
