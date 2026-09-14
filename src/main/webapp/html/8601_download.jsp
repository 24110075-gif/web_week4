<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Tai Nhac - 86 (The Band)</title>
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
        <div class="download-header-card">
            <div class="download-meta">
                <h1 class="download-artist">86 (The Band)</h1>
                <div class="download-album-title">True Life Songs and Pictures</div>
                <span class="badge-success">Da xac thuc thanh vien - San sang tai nhac</span>
            </div>
        </div>

        <div class="table-card">
            <table>
                <thead>
                    <tr>
                        <th style="width: 50px;">STT</th>
                        <th>Ten Bai Hat</th>
                        <th style="width: 120px;">Dinh Dang</th>
                        <th style="width: 120px; text-align: center;">Tai Ve</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><span class="track-number">01</span></td>
                        <td><span class="track-name">You Are a Star</span></td>
                        <td><span class="album-badge">MP3</span></td>
                        <td style="text-align: center;">
                            <a href="https://online.hcmute.edu.vn/" target="_blank" class="btn-download">Tai MP3</a>
                        </td>
                    </tr>
                    <tr>
                        <td><span class="track-number">02</span></td>
                        <td><span class="track-name">Don't Make No Difference</span></td>
                        <td><span class="album-badge">MP3</span></td>
                        <td style="text-align: center;">
                            <a href="https://utexlms.hcmute.edu.vn/login/index.php" target="_blank" class="btn-download">Tai MP3</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="action-row">
            <a href="${pageContext.request.contextPath}/" class="btn-secondary">&larr; Quay lai danh sach Album</a>
            <span class="system-status">Trang thai may chu: Dang hoat dong</span>
        </div>
    </div>

    <div class="footer">
        &copy; 2026 - Lap trinh Web voi Java Servlet &amp; JSP
    </div>

</body>
</html>