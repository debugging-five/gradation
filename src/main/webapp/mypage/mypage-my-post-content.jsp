<%@ page import="com.app.vo.MailVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-my-post-content.css" />
<title>보낸 쪽지 상세</title>
</head>
<body>
<%@ include file="../layout/header.jsp" %>

<%
    MailVO mail = (MailVO) request.getAttribute("mail");
%>

<div class="container-center">
    <div class="mypage-post-content screen">
        <div class="flex-row">
            <%@ include file="mypage-info-layout.jsp" %>
            <div class="message-container">
                <div class="page-title">보낸 쪽지 상세</div>

                <div class="message-detail">
                    <div class="detail-row">
                        <span class="detail-label">수신인</span>
                        <span class="detail-value"><%= mail.getReceiveUserName() %></span>
                    </div>
                    <div class="detail-row">
                        <span class="detail-label">보낸 시간</span>
                        <span class="detail-value">
                            <%
                                java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm");
                                out.print(sdf.format(mail.getMailSendTime()));
                            %>
                        </span>
                    </div>
                    <div class="detail-row">
                        <span class="detail-label">제목</span>
                        <span class="detail-value"><%= mail.getMailTitle() %></span>
                    </div>
                    <div class="detail-content">
                        <%= mail.getMailContents().replaceAll("\n", "<br/>") %>
                    </div>
                </div>

                <div class="message-buttons">
                    <button onclick="location.href='mypage-my-post-list.mypage'">목록</button>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="../layout/footer.jsp" %>
</body>
</html>
