<%@ page import="com.app.vo.MailVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-post-content.css" />
<title>쪽지 상세보기</title>
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
                <div class="page-title">쪽지 상세보기</div>

                <div class="message-detail">
                    <div class="detail-row">
                        <span class="detail-label">보낸 사람</span>
                        <span class="detail-value"><%= mail.getSendUserName() %></span>
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
                    <button onclick="location.href='mypage-post-list.mypage'">목록</button>
                    <button onclick="location.href='mypage-post-delete-ok.mypage?id=<%= mail.getId() %>'">삭제</button>
                    <button onclick="location.href='mypage-post-reply.mypage?id=<%= mail.getId() %>'">답장</button>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="../layout/footer.jsp" %>
</body>
</html>
