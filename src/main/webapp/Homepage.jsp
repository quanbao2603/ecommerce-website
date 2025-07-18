<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>WOMTechShop</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="./css/Homepage.css">
</head>
<body>

    <jsp:include page="Header.jsp" />

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

	<jsp:include page="Footer.jsp" />
    
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
		integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
		crossorigin="anonymous">
	</script>
</body>
</html>
