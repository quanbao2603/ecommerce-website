<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String currentPage = request.getRequestURI();
%>

<!-- HEADER -->
<header class="bg-light py-3 border-bottom">
    <div class="container d-flex justify-content-between align-items-center">
        <div class="logo">
            <a href="Homepage.jsp">
                <img src="img/logo/logo.png" alt="Logo">
            </a>
        </div>
        <div class="search-bar w-50">
            <input type="text" class="form-control" placeholder="Tìm kiếm sản phẩm...">
        </div>
        <div class="header-icons d-flex align-items-center">
            <a href="auth/Login.jsp" class="text-dark me-3"><i class="fas fa-user"></i> Đăng nhập</a>
            <a href="#" class="text-dark"><i class="fas fa-shopping-cart"></i> Cart</a>
        </div>
    </div>
</header>

<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container">
        <ul class="navbar-nav me-auto w-100 justify-content-between">
            <li class="nav-item"><a class="nav-link <%= currentPage.contains("Homepage.jsp") ? "active" : "" %>" href="Homepage.jsp">Trang chủ</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Laptop</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Linh kiện</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Phụ kiện</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Chính sách</a></li>
            <li class="nav-item"><a class="nav-link <%= currentPage.contains("About.jsp") ? "active" : "" %>" href="About.jsp">Giới thiệu</a></li>
            <li class="nav-item"><a class="nav-link <%= currentPage.contains("Contact.jsp") ? "active" : "" %>" href="Contact.jsp">Liên hệ</a></li>
        </ul>
    </div>
</nav>