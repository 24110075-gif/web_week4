<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Dang Ky Thanh Vien - Tai Nhac</title>
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
        <div class="form-card">
            <h1 class="form-title">Dang Ky Thanh Vien</h1>
            <p class="form-subtitle">Vui long nhap thong tin de tai cac bai hat trong album.</p>

            <form action="download" method="post">
                <input type="hidden" name="action" value="registerUser">

                <div class="form-group">
                    <label for="email">Dia chi Email:</label>
                    <input type="email" id="email" name="email" class="form-control"
                           value="${user.email}" placeholder="example@gmail.com" required>
                </div>

                <div class="form-group">
                    <label for="firstName">Ten (First Name):</label>
                    <input type="text" id="firstName" name="firstName" class="form-control"
                           value="${user.firstName}" placeholder="Nguyen" required>
                </div>

                <div class="form-group">
                    <label for="lastName">Ho va Ten dem (Last Name):</label>
                    <input type="text" id="lastName" name="lastName" class="form-control"
                           value="${user.lastName}" placeholder="Van A" required>
                </div>

                <button type="submit" id="submit" class="btn-submit">
                    Dang Ky &amp; Nhan Link Tai
                </button>
            </form>

            <div style="text-align: center; margin-top: 14px;">
                <a href="${pageContext.request.contextPath}/" class="btn-secondary">
                    &larr; Quay lai danh sach Album
                </a>
            </div>
        </div>
    </div>

    <div class="footer">
        &copy; 2026 - Lap trinh Web voi Java Servlet &amp; JSP
    </div>

</body>
</html>