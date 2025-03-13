package com.app.vo;

import java.util.Objects;

public class UserVO {
   private Long id; // Pk
   private String userImgName;
   private String userImgPass;
   private String userName;
   private String userEmail;
   private String userId;
   private String userPassword;
   private String userPhone;
   private String userNickName;
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
   
   @Override
   public String toString() {
      return "UserVO [id=" + id + ", userImgName=" + userImgName + ", userImgPass=" + userImgPass + ", userName="
            + userName + ", userEmail=" + userEmail + ", userId=" + userId + ", userPassword=" + userPassword
            + ", userPhone=" + userPhone + ", userNickName=" + userNickName + ", userAddress=" + userAddress
            + ", userPostalCode=" + userPostalCode + ", userSnsOk=" + userSnsOk + ", userMailOk=" + userMailOk
            + ", userAgreementOk=" + userAgreementOk + ", userIntroduce=" + userIntroduce + ", userRecode="
            + userRecode + ", userInstagram=" + userInstagram + ", userYoutube=" + userYoutube + ", userBlog="
            + userBlog + ", userKakao=" + userKakao + ", userGoogle=" + userGoogle + ", userNaver=" + userNaver
            + ", userWriterOk=" + userWriterOk + ", userAdminOk=" + userAdminOk + ", userBanOk=" + userBanOk
            + ", universityId=" + universityId + "]";
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
      UserVO other = (UserVO) obj;
      return Objects.equals(id, other.id);
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
   public String getUserImgPass() {
      return userImgPass;
   }
   public void setUserImgPass(String userImgPass) {
      this.userImgPass = userImgPass;
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
   public String getUserId() {
      return userId;
   }
   public void setUserId(String userId) {
      this.userId = userId;
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
   public String getUserNickName() {
      return userNickName;
   }
   public void setUserNickName(String userNickName) {
      this.userNickName = userNickName;
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
   
}
