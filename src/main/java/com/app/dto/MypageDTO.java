package com.app.dto;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.Objects;

public class MypageDTO {
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
	
//	TBL_QNA
	private Long id;
	private String qnaTitle;
	private String qnaContent;
	private Timestamp qnaTime;
	private String qnaImgName;
	private String qnaImgPath;
	private Long userId;
	
//	TBL_QNA_ANSWER
	private String qnaAnswerTitle;
	private String qnaAnswerContent;
	private Timestamp qnaAnswerTime;
	private Long qnaId;
	
//	FAQ
	private String faqTitle;
	private String FaqContent;
	
// 대학교
    private String universityName;
    private String universityLocation;
    private String universityLogoImgName;
    private String universityLogoImgPath;
	
//  대학좋아요
	private Long universityId;
	private Timestamp universityLikeTime;
	
//	업사이클
	private String upcycleCategory;
	private String upcycleSize;
	private Date upcycleDate;
	private String upcycleAddress;
	
//	대학 전시회
	private Date universityExhibitionDate;
	private String universityExhibitionState;
	private String universityExhibitionTitle;
	private String universityExhibitionLocation;
	private Long majorId;
	
//	대학전시회 이미지
	private String universityExhibitionImgName;
	private String universityExhibitionImgPath;
	private Long universityExhibitionId;
	
//	댓글
	private Long artPostId;
	private String replyContents;
	private Date replyDate;
	
//	댓글좋아요
	private Long replyId;
	private Timestamp replyLikeTime;
	
//	결제
	private Long auctionId;
	private String paymentMethod;
	private int paymentAmount;
	private Timestamp paymentDate;
	private String paymentCode;
	
//	결제취소
	private String paymentCancellationCode;
	private Long paymentId;
	
//	학과
	private String majorName;
	
//	쪽지
	private String mailTitle;
	private String mailContents;
	private Timestamp mailSendTime;
	private int mailIsopen;
	private Long sendUserId;
	private Long recieveUserId;
	
//	전시회
	private String GradationExhibitionTitle;
	private int GradationExhibitionCount;
	private Date GradationExhibitionTime;
	private int GradationExhibitionFee;
	private String GradationExhibitionTel;
	private String GradationExhibitionAddress;
	private Date GradationExhibitionDate;
	
//	작품
	private String artCategoty;
	private String artMeterial;
	private String artSize;
	private String artDescription;
	private Date artDate;
	private Date artStartDate;
	private Date artEndDate;
	
//	작품게시
	private Timestamp artPostDate;
	private Long artId;
	
//	작품좋아요
	private Timestamp artLikeTime;
	
//	작품이미지
	private String artImgName;
	private String artImgPath;
	
//  배송
	private String deliveryAddress;
	private String deliveryDetailAddress;
	private String deliveryPostalCode;
	private String deliveryState;
	private String deliveryMessage;
	private String deliveryReceiver;
	private String deliveryPhone;
	
//	정지
	private String banReason;
	private Timestamp banDate;
	
//	경매
	private Date auctionStartDate; // 경매 시작 시간
	private Long auctionStartPrice; // 시작가
	private Long auctionEstimatePrice; // 추정가
	private int auctionAttracted; // 본 필드는 경매낙찰여부 입니다. 0유찰 1낙찰
	private Long auctionBidPrice; // 낙찰가
	private Date auctionBidDate; // 경매 종료일
	
	public MypageDTO() {;}

	public MypageDTO(String userImgName, String userImgPath, String userName, String userEmail, String uUserId,
			String userPassword, String userPhone, String userNickname, String userAddress, String userPostalCode,
			int userSnsOk, int userMailOk, int userAgreementOk, String userIntroduce, String userRecode,
			String userInstagram, String userYoutube, String userBlog, String userKakao, String userGoogle,
			String userNaver, int userWriterOk, int userAdminOk, int userBanOk, Long id, String qnaTitle,
			String qnaContent, Timestamp qnaTime, String qnaImgName, String qnaImgPath, Long userId,
			String qnaAnswerTitle, String qnaAnswerContent, Timestamp qnaAnswerTime, Long qnaId, String faqTitle,
			String faqContent, String universityName, String universityLocation, String universityLogoImgName,
			String universityLogoImgPath, Long universityId, Timestamp universityLikeTime, String upcycleCategory,
			String upcycleSize, Date upcycleDate, String upcycleAddress, Date universityExhibitionDate,
			String universityExhibitionState, String universityExhibitionTitle, String universityExhibitionLocation,
			Long majorId, String universityExhibitionImgName, String universityExhibitionImgPath,
			Long universityExhibitionId, Long artPostId, String replyContents, Date replyDate, Long replyId,
			Timestamp replyLikeTime, Long auctionId, String paymentMethod, int paymentAmount, Timestamp paymentDate,
			String paymentCode, String paymentCancellationCode, Long paymentId, String majorName, String mailTitle,
			String mailContents, Timestamp mailSendTime, int mailIsopen, Long sendUserId, Long recieveUserId,
			String gradationExhibitionTitle, int gradationExhibitionCount, Date gradationExhibitionTime,
			int gradationExhibitionFee, String gradationExhibitionTel, String gradationExhibitionAddress,
			Date gradationExhibitionDate, String artCategoty, String artMeterial, String artSize, String artDescription,
			Date artDate, Date artStartDate, Date artEndDate, Timestamp artPostDate, Long artId, Timestamp artLikeTime,
			String artImgName, String artImgPath, String deliveryAddress, String deliveryDetailAddress,
			String deliveryPostalCode, String deliveryState, String deliveryMessage, String deliveryReceiver,
			String deliveryPhone, String banReason, Timestamp banDate, Date auctionStartDate, Long auctionStartPrice,
			Long auctionEstimatePrice, int auctionAttracted, Long auctionBidPrice, Date auctionBidDate) {
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
		this.faqTitle = faqTitle;
		FaqContent = faqContent;
		this.universityName = universityName;
		this.universityLocation = universityLocation;
		this.universityLogoImgName = universityLogoImgName;
		this.universityLogoImgPath = universityLogoImgPath;
		this.universityId = universityId;
		this.universityLikeTime = universityLikeTime;
		this.upcycleCategory = upcycleCategory;
		this.upcycleSize = upcycleSize;
		this.upcycleDate = upcycleDate;
		this.upcycleAddress = upcycleAddress;
		this.universityExhibitionDate = universityExhibitionDate;
		this.universityExhibitionState = universityExhibitionState;
		this.universityExhibitionTitle = universityExhibitionTitle;
		this.universityExhibitionLocation = universityExhibitionLocation;
		this.majorId = majorId;
		this.universityExhibitionImgName = universityExhibitionImgName;
		this.universityExhibitionImgPath = universityExhibitionImgPath;
		this.universityExhibitionId = universityExhibitionId;
		this.artPostId = artPostId;
		this.replyContents = replyContents;
		this.replyDate = replyDate;
		this.replyId = replyId;
		this.replyLikeTime = replyLikeTime;
		this.auctionId = auctionId;
		this.paymentMethod = paymentMethod;
		this.paymentAmount = paymentAmount;
		this.paymentDate = paymentDate;
		this.paymentCode = paymentCode;
		this.paymentCancellationCode = paymentCancellationCode;
		this.paymentId = paymentId;
		this.majorName = majorName;
		this.mailTitle = mailTitle;
		this.mailContents = mailContents;
		this.mailSendTime = mailSendTime;
		this.mailIsopen = mailIsopen;
		this.sendUserId = sendUserId;
		this.recieveUserId = recieveUserId;
		GradationExhibitionTitle = gradationExhibitionTitle;
		GradationExhibitionCount = gradationExhibitionCount;
		GradationExhibitionTime = gradationExhibitionTime;
		GradationExhibitionFee = gradationExhibitionFee;
		GradationExhibitionTel = gradationExhibitionTel;
		GradationExhibitionAddress = gradationExhibitionAddress;
		GradationExhibitionDate = gradationExhibitionDate;
		this.artCategoty = artCategoty;
		this.artMeterial = artMeterial;
		this.artSize = artSize;
		this.artDescription = artDescription;
		this.artDate = artDate;
		this.artStartDate = artStartDate;
		this.artEndDate = artEndDate;
		this.artPostDate = artPostDate;
		this.artId = artId;
		this.artLikeTime = artLikeTime;
		this.artImgName = artImgName;
		this.artImgPath = artImgPath;
		this.deliveryAddress = deliveryAddress;
		this.deliveryDetailAddress = deliveryDetailAddress;
		this.deliveryPostalCode = deliveryPostalCode;
		this.deliveryState = deliveryState;
		this.deliveryMessage = deliveryMessage;
		this.deliveryReceiver = deliveryReceiver;
		this.deliveryPhone = deliveryPhone;
		this.banReason = banReason;
		this.banDate = banDate;
		this.auctionStartDate = auctionStartDate;
		this.auctionStartPrice = auctionStartPrice;
		this.auctionEstimatePrice = auctionEstimatePrice;
		this.auctionAttracted = auctionAttracted;
		this.auctionBidPrice = auctionBidPrice;
		this.auctionBidDate = auctionBidDate;
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

	public String getFaqTitle() {
		return faqTitle;
	}

	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}

	public String getFaqContent() {
		return FaqContent;
	}

	public void setFaqContent(String faqContent) {
		FaqContent = faqContent;
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

	public Long getUniversityId() {
		return universityId;
	}

	public void setUniversityId(Long universityId) {
		this.universityId = universityId;
	}

	public Timestamp getUniversityLikeTime() {
		return universityLikeTime;
	}

	public void setUniversityLikeTime(Timestamp universityLikeTime) {
		this.universityLikeTime = universityLikeTime;
	}

	public String getUpcycleCategory() {
		return upcycleCategory;
	}

	public void setUpcycleCategory(String upcycleCategory) {
		this.upcycleCategory = upcycleCategory;
	}

	public String getUpcycleSize() {
		return upcycleSize;
	}

	public void setUpcycleSize(String upcycleSize) {
		this.upcycleSize = upcycleSize;
	}

	public Date getUpcycleDate() {
		return upcycleDate;
	}

	public void setUpcycleDate(Date upcycleDate) {
		this.upcycleDate = upcycleDate;
	}

	public String getUpcycleAddress() {
		return upcycleAddress;
	}

	public void setUpcycleAddress(String upcycleAddress) {
		this.upcycleAddress = upcycleAddress;
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

	public Long getMajorId() {
		return majorId;
	}

	public void setMajorId(Long majorId) {
		this.majorId = majorId;
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

	public Long getAuctionId() {
		return auctionId;
	}

	public void setAuctionId(Long auctionId) {
		this.auctionId = auctionId;
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

	public String getPaymentCancellationCode() {
		return paymentCancellationCode;
	}

	public void setPaymentCancellationCode(String paymentCancellationCode) {
		this.paymentCancellationCode = paymentCancellationCode;
	}

	public Long getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(Long paymentId) {
		this.paymentId = paymentId;
	}

	public String getMajorName() {
		return majorName;
	}

	public void setMajorName(String majorName) {
		this.majorName = majorName;
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

	public String getGradationExhibitionTitle() {
		return GradationExhibitionTitle;
	}

	public void setGradationExhibitionTitle(String gradationExhibitionTitle) {
		GradationExhibitionTitle = gradationExhibitionTitle;
	}

	public int getGradationExhibitionCount() {
		return GradationExhibitionCount;
	}

	public void setGradationExhibitionCount(int gradationExhibitionCount) {
		GradationExhibitionCount = gradationExhibitionCount;
	}

	public Date getGradationExhibitionTime() {
		return GradationExhibitionTime;
	}

	public void setGradationExhibitionTime(Date gradationExhibitionTime) {
		GradationExhibitionTime = gradationExhibitionTime;
	}

	public int getGradationExhibitionFee() {
		return GradationExhibitionFee;
	}

	public void setGradationExhibitionFee(int gradationExhibitionFee) {
		GradationExhibitionFee = gradationExhibitionFee;
	}

	public String getGradationExhibitionTel() {
		return GradationExhibitionTel;
	}

	public void setGradationExhibitionTel(String gradationExhibitionTel) {
		GradationExhibitionTel = gradationExhibitionTel;
	}

	public String getGradationExhibitionAddress() {
		return GradationExhibitionAddress;
	}

	public void setGradationExhibitionAddress(String gradationExhibitionAddress) {
		GradationExhibitionAddress = gradationExhibitionAddress;
	}

	public Date getGradationExhibitionDate() {
		return GradationExhibitionDate;
	}

	public void setGradationExhibitionDate(Date gradationExhibitionDate) {
		GradationExhibitionDate = gradationExhibitionDate;
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

	public Timestamp getArtLikeTime() {
		return artLikeTime;
	}

	public void setArtLikeTime(Timestamp artLikeTime) {
		this.artLikeTime = artLikeTime;
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

	public String getBanReason() {
		return banReason;
	}

	public void setBanReason(String banReason) {
		this.banReason = banReason;
	}

	public Timestamp getBanDate() {
		return banDate;
	}

	public void setBanDate(Timestamp banDate) {
		this.banDate = banDate;
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

	@Override
	public String toString() {
		return "MypageDTO [userImgName=" + userImgName + ", userImgPath=" + userImgPath + ", userName=" + userName
				+ ", userEmail=" + userEmail + ", uUserId=" + uUserId + ", userPassword=" + userPassword
				+ ", userPhone=" + userPhone + ", userNickname=" + userNickname + ", userAddress=" + userAddress
				+ ", userPostalCode=" + userPostalCode + ", userSnsOk=" + userSnsOk + ", userMailOk=" + userMailOk
				+ ", userAgreementOk=" + userAgreementOk + ", userIntroduce=" + userIntroduce + ", userRecode="
				+ userRecode + ", userInstagram=" + userInstagram + ", userYoutube=" + userYoutube + ", userBlog="
				+ userBlog + ", userKakao=" + userKakao + ", userGoogle=" + userGoogle + ", userNaver=" + userNaver
				+ ", userWriterOk=" + userWriterOk + ", userAdminOk=" + userAdminOk + ", userBanOk=" + userBanOk
				+ ", id=" + id + ", qnaTitle=" + qnaTitle + ", qnaContent=" + qnaContent + ", qnaTime=" + qnaTime
				+ ", qnaImgName=" + qnaImgName + ", qnaImgPath=" + qnaImgPath + ", userId=" + userId
				+ ", qnaAnswerTitle=" + qnaAnswerTitle + ", qnaAnswerContent=" + qnaAnswerContent + ", qnaAnswerTime="
				+ qnaAnswerTime + ", qnaId=" + qnaId + ", faqTitle=" + faqTitle + ", FaqContent=" + FaqContent
				+ ", universityName=" + universityName + ", universityLocation=" + universityLocation
				+ ", universityLogoImgName=" + universityLogoImgName + ", universityLogoImgPath="
				+ universityLogoImgPath + ", universityId=" + universityId + ", universityLikeTime="
				+ universityLikeTime + ", upcycleCategory=" + upcycleCategory + ", upcycleSize=" + upcycleSize
				+ ", upcycleDate=" + upcycleDate + ", upcycleAddress=" + upcycleAddress + ", universityExhibitionDate="
				+ universityExhibitionDate + ", universityExhibitionState=" + universityExhibitionState
				+ ", universityExhibitionTitle=" + universityExhibitionTitle + ", universityExhibitionLocation="
				+ universityExhibitionLocation + ", majorId=" + majorId + ", universityExhibitionImgName="
				+ universityExhibitionImgName + ", universityExhibitionImgPath=" + universityExhibitionImgPath
				+ ", universityExhibitionId=" + universityExhibitionId + ", artPostId=" + artPostId + ", replyContents="
				+ replyContents + ", replyDate=" + replyDate + ", replyId=" + replyId + ", replyLikeTime="
				+ replyLikeTime + ", auctionId=" + auctionId + ", paymentMethod=" + paymentMethod + ", paymentAmount="
				+ paymentAmount + ", paymentDate=" + paymentDate + ", paymentCode=" + paymentCode
				+ ", paymentCancellationCode=" + paymentCancellationCode + ", paymentId=" + paymentId + ", majorName="
				+ majorName + ", mailTitle=" + mailTitle + ", mailContents=" + mailContents + ", mailSendTime="
				+ mailSendTime + ", mailIsopen=" + mailIsopen + ", sendUserId=" + sendUserId + ", recieveUserId="
				+ recieveUserId + ", GradationExhibitionTitle=" + GradationExhibitionTitle
				+ ", GradationExhibitionCount=" + GradationExhibitionCount + ", GradationExhibitionTime="
				+ GradationExhibitionTime + ", GradationExhibitionFee=" + GradationExhibitionFee
				+ ", GradationExhibitionTel=" + GradationExhibitionTel + ", GradationExhibitionAddress="
				+ GradationExhibitionAddress + ", GradationExhibitionDate=" + GradationExhibitionDate + ", artCategoty="
				+ artCategoty + ", artMeterial=" + artMeterial + ", artSize=" + artSize + ", artDescription="
				+ artDescription + ", artDate=" + artDate + ", artStartDate=" + artStartDate + ", artEndDate="
				+ artEndDate + ", artPostDate=" + artPostDate + ", artId=" + artId + ", artLikeTime=" + artLikeTime
				+ ", artImgName=" + artImgName + ", artImgPath=" + artImgPath + ", deliveryAddress=" + deliveryAddress
				+ ", deliveryDetailAddress=" + deliveryDetailAddress + ", deliveryPostalCode=" + deliveryPostalCode
				+ ", deliveryState=" + deliveryState + ", deliveryMessage=" + deliveryMessage + ", deliveryReceiver="
				+ deliveryReceiver + ", deliveryPhone=" + deliveryPhone + ", banReason=" + banReason + ", banDate="
				+ banDate + ", auctionStartDate=" + auctionStartDate + ", auctionStartPrice=" + auctionStartPrice
				+ ", auctionEstimatePrice=" + auctionEstimatePrice + ", auctionAttracted=" + auctionAttracted
				+ ", auctionBidPrice=" + auctionBidPrice + ", auctionBidDate=" + auctionBidDate + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(FaqContent, GradationExhibitionAddress, GradationExhibitionCount, GradationExhibitionDate,
				GradationExhibitionFee, GradationExhibitionTel, GradationExhibitionTime, GradationExhibitionTitle,
				artCategoty, artDate, artDescription, artEndDate, artId, artImgName, artImgPath, artLikeTime,
				artMeterial, artPostDate, artPostId, artSize, artStartDate, auctionAttracted, auctionBidDate,
				auctionBidPrice, auctionEstimatePrice, auctionId, auctionStartDate, auctionStartPrice, banDate,
				banReason, deliveryAddress, deliveryDetailAddress, deliveryMessage, deliveryPhone, deliveryPostalCode,
				deliveryReceiver, deliveryState, faqTitle, id, mailContents, mailIsopen, mailSendTime, mailTitle,
				majorId, majorName, paymentAmount, paymentCancellationCode, paymentCode, paymentDate, paymentId,
				paymentMethod, qnaAnswerContent, qnaAnswerTime, qnaAnswerTitle, qnaContent, qnaId, qnaImgName,
				qnaImgPath, qnaTime, qnaTitle, recieveUserId, replyContents, replyDate, replyId, replyLikeTime,
				sendUserId, uUserId, universityExhibitionDate, universityExhibitionId, universityExhibitionImgName,
				universityExhibitionImgPath, universityExhibitionLocation, universityExhibitionState,
				universityExhibitionTitle, universityId, universityLikeTime, universityLocation, universityLogoImgName,
				universityLogoImgPath, universityName, upcycleAddress, upcycleCategory, upcycleDate, upcycleSize,
				userAddress, userAdminOk, userAgreementOk, userBanOk, userBlog, userEmail, userGoogle, userId,
				userImgName, userImgPath, userInstagram, userIntroduce, userKakao, userMailOk, userName, userNaver,
				userNickname, userPassword, userPhone, userPostalCode, userRecode, userSnsOk, userWriterOk,
				userYoutube);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MypageDTO other = (MypageDTO) obj;
		return Objects.equals(FaqContent, other.FaqContent)
				&& Objects.equals(GradationExhibitionAddress, other.GradationExhibitionAddress)
				&& GradationExhibitionCount == other.GradationExhibitionCount
				&& Objects.equals(GradationExhibitionDate, other.GradationExhibitionDate)
				&& GradationExhibitionFee == other.GradationExhibitionFee
				&& Objects.equals(GradationExhibitionTel, other.GradationExhibitionTel)
				&& Objects.equals(GradationExhibitionTime, other.GradationExhibitionTime)
				&& Objects.equals(GradationExhibitionTitle, other.GradationExhibitionTitle)
				&& Objects.equals(artCategoty, other.artCategoty) && Objects.equals(artDate, other.artDate)
				&& Objects.equals(artDescription, other.artDescription) && Objects.equals(artEndDate, other.artEndDate)
				&& Objects.equals(artId, other.artId) && Objects.equals(artImgName, other.artImgName)
				&& Objects.equals(artImgPath, other.artImgPath) && Objects.equals(artLikeTime, other.artLikeTime)
				&& Objects.equals(artMeterial, other.artMeterial) && Objects.equals(artPostDate, other.artPostDate)
				&& Objects.equals(artPostId, other.artPostId) && Objects.equals(artSize, other.artSize)
				&& Objects.equals(artStartDate, other.artStartDate) && auctionAttracted == other.auctionAttracted
				&& Objects.equals(auctionBidDate, other.auctionBidDate)
				&& Objects.equals(auctionBidPrice, other.auctionBidPrice)
				&& Objects.equals(auctionEstimatePrice, other.auctionEstimatePrice)
				&& Objects.equals(auctionId, other.auctionId)
				&& Objects.equals(auctionStartDate, other.auctionStartDate)
				&& Objects.equals(auctionStartPrice, other.auctionStartPrice) && Objects.equals(banDate, other.banDate)
				&& Objects.equals(banReason, other.banReason) && Objects.equals(deliveryAddress, other.deliveryAddress)
				&& Objects.equals(deliveryDetailAddress, other.deliveryDetailAddress)
				&& Objects.equals(deliveryMessage, other.deliveryMessage)
				&& Objects.equals(deliveryPhone, other.deliveryPhone)
				&& Objects.equals(deliveryPostalCode, other.deliveryPostalCode)
				&& Objects.equals(deliveryReceiver, other.deliveryReceiver)
				&& Objects.equals(deliveryState, other.deliveryState) && Objects.equals(faqTitle, other.faqTitle)
				&& Objects.equals(id, other.id) && Objects.equals(mailContents, other.mailContents)
				&& mailIsopen == other.mailIsopen && Objects.equals(mailSendTime, other.mailSendTime)
				&& Objects.equals(mailTitle, other.mailTitle) && Objects.equals(majorId, other.majorId)
				&& Objects.equals(majorName, other.majorName) && paymentAmount == other.paymentAmount
				&& Objects.equals(paymentCancellationCode, other.paymentCancellationCode)
				&& Objects.equals(paymentCode, other.paymentCode) && Objects.equals(paymentDate, other.paymentDate)
				&& Objects.equals(paymentId, other.paymentId) && Objects.equals(paymentMethod, other.paymentMethod)
				&& Objects.equals(qnaAnswerContent, other.qnaAnswerContent)
				&& Objects.equals(qnaAnswerTime, other.qnaAnswerTime)
				&& Objects.equals(qnaAnswerTitle, other.qnaAnswerTitle) && Objects.equals(qnaContent, other.qnaContent)
				&& Objects.equals(qnaId, other.qnaId) && Objects.equals(qnaImgName, other.qnaImgName)
				&& Objects.equals(qnaImgPath, other.qnaImgPath) && Objects.equals(qnaTime, other.qnaTime)
				&& Objects.equals(qnaTitle, other.qnaTitle) && Objects.equals(recieveUserId, other.recieveUserId)
				&& Objects.equals(replyContents, other.replyContents) && Objects.equals(replyDate, other.replyDate)
				&& Objects.equals(replyId, other.replyId) && Objects.equals(replyLikeTime, other.replyLikeTime)
				&& Objects.equals(sendUserId, other.sendUserId) && Objects.equals(uUserId, other.uUserId)
				&& Objects.equals(universityExhibitionDate, other.universityExhibitionDate)
				&& Objects.equals(universityExhibitionId, other.universityExhibitionId)
				&& Objects.equals(universityExhibitionImgName, other.universityExhibitionImgName)
				&& Objects.equals(universityExhibitionImgPath, other.universityExhibitionImgPath)
				&& Objects.equals(universityExhibitionLocation, other.universityExhibitionLocation)
				&& Objects.equals(universityExhibitionState, other.universityExhibitionState)
				&& Objects.equals(universityExhibitionTitle, other.universityExhibitionTitle)
				&& Objects.equals(universityId, other.universityId)
				&& Objects.equals(universityLikeTime, other.universityLikeTime)
				&& Objects.equals(universityLocation, other.universityLocation)
				&& Objects.equals(universityLogoImgName, other.universityLogoImgName)
				&& Objects.equals(universityLogoImgPath, other.universityLogoImgPath)
				&& Objects.equals(universityName, other.universityName)
				&& Objects.equals(upcycleAddress, other.upcycleAddress)
				&& Objects.equals(upcycleCategory, other.upcycleCategory)
				&& Objects.equals(upcycleDate, other.upcycleDate) && Objects.equals(upcycleSize, other.upcycleSize)
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
