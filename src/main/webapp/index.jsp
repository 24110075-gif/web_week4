<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Cua Hang Nhac - Danh Sach Album</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

    <div class="navbar">
        <div class="navbar-container">
            <a href="${pageContext.request.contextPath}/" class="navbar-brand">Music Store</a>
            <span class="navbar-subtitle">Bai Thuc Hanh Lap Trinh Web - Tuan 4</span>
        </div>
    </div>

    <div class="container">
        <div class="page-header">
            <h1 class="page-title">Danh Sach Album Nhac</h1>
            <p class="page-desc">Chon mot album de xem va tai nhac.</p>
        </div>

        <div class="album-grid">
            <c:forEach var="album" items="${albumList}">
                <a href="download?action=checkUser&amp;productId=${album.productId}" class="album-card">
                    <div class="album-id">Ma Album: ${album.productId}</div>
                    <div class="album-title">${album.title}</div>
                    <div class="album-footer">
                        <span class="album-badge">MP3</span>
                        <span class="album-btn">Xem &amp; Tai &rarr;</span>
                    </div>
                </a>
            </c:forEach>
        </div>
    </div>

    <div class="footer">
        &copy; 2026 - Lap trinh Web voi Java Servlet &amp; JSP
    </div>

</body>
</html>