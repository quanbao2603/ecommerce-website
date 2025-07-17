<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>WomTechShop</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="./css/Homepage.css">
</head>
<body>

    <!-- HEADER -->
    <header class="bg-light py-3 border-bottom">
        <div class="container d-flex justify-content-between align-items-center">
            <div class="logo">
                <a href="./Homepage.jsp">
                    <img src="./img/logo/logo.png" alt="Logo">
                </a>
            </div>
            <div class="search-bar w-50">
                <input type="text" class="form-control" placeholder="Tìm kiếm sản phẩm...">
            </div>
            <div class="header-icons d-flex align-items-center">
                <a href="./auth/Login.jsp" class="text-dark me-3"><i class="fas fa-user"></i> Đăng nhập</a>
                <a href="#" class="text-dark"><i class="fas fa-shopping-cart"></i> Cart</a>
            </div>
        </div>
    </header>

    <!-- NAVBAR -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container">
            <ul class="navbar-nav me-auto w-100 justify-content-between">
                <li class="nav-item"><a class="nav-link active" href="#">Trang chủ</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Laptop</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Linh kiện</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Phụ kiện</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Giới thiệu</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Liên hệ</a></li>
            </ul>
        </div>
    </nav>

    <!-- MAIN CONTENT -->
    <div class="container my-4">
    <div class="row">
        <!-- Sidebar -->
        <div class="sidebar col-md-3">
            <h5>Danh mục</h5>
            <ul class="list-group">
                <li class="list-group-item"><a href="#">Laptop Gaming</a></li>
                <li class="list-group-item"><a href="#">Laptop Văn Phòng</a></li>
                <li class="list-group-item"><a href="#">CPU</a></li>
                <li class="list-group-item"><a href="#">RAM</a></li>
                <li class="list-group-item"><a href="#">Ổ cứng</a></li>
                <li class="list-group-item"><a href="#">Chuột, Bàn phím</a></li>
            </ul>
        </div>

        <!-- Product Cards Wrapper -->
        <div class="col-md-9">
            <div class="row">
                <c:forEach var="product" items="${productList}">
                    <div class="col-md-4 mb-4">
                        <div class="card h-100">
                            <img src="${product.imageUrl}" class="card-img-top" alt="${product.name}">
                            <div class="card-body">
                                <h5 class="card-title">${product.name}</h5>
                                <p class="card-text">${product.price}</p>
                                <a href="productDetail?id=${product.id}" class="btn btn-primary">Xem chi tiết</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
    
    
    <!-- FOOTER -->
    <footer class="bg-dark text-white text-center py-3 mt-5">
    	&copy; <span id="year"></span> WomTechShop. All rights reserved.
	</footer>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
		integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
		crossorigin="anonymous">
	</script>

    <script>
        document.querySelector("#year").textContent = new Date().getFullYear();
    </script>
</body>
</html>
