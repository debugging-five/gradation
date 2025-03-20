<%@ page import="java.io.*, java.nio.file.*, javax.servlet.http.*, javax.servlet.annotation.MultipartConfig" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- 📌 `@MultipartConfig` 어노테이션 추가 --%>
<%@ page import="javax.servlet.annotation.MultipartConfig" %>
<%@ page isELIgnored="false" %>

<%-- MultipartConfig 설정 --%>
<%@ page import="javax.servlet.http.Part" %>
<%
    String uploadPath = application.getRealPath("/") + "/assets/images/mypage/upload";
    File uploadDir = new File(uploadPath);
    if (!uploadDir.exists()) uploadDir.mkdirs();

    String fileName = "default-profile.jpg";
    String savedFilePath = request.getContextPath() + "/assets/images/mypage/upload/" + fileName;

    try {
        Part filePart = request.getPart("profileImage");
        if (filePart != null && filePart.getSize() > 0) {
            fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
            File file = new File(uploadPath, fileName);
            try (InputStream fileContent = filePart.getInputStream();
                 OutputStream fileOut = new FileOutputStream(file)) {
                byte[] buffer = new byte[1024];
                int bytesRead;
                while ((bytesRead = fileContent.read(buffer)) != -1) {
                    fileOut.write(buffer, 0, bytesRead);
                }
            }
            savedFilePath = "/assets/images/mypage/upload/" + fileName;
            session.setAttribute("profileImage", savedFilePath);
        }
    } catch (Exception e) {
        out.println("파일 업로드 중 오류 발생: " + e.getMessage());
    }

    response.sendRedirect("my-post-list.jsp"); // 업로드 후 페이지 새로고침
%>
