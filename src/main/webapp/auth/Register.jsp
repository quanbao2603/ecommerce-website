<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WOMTECH - Register</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/Register.css">
<%
String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
		+ request.getContextPath();
%>
<link href="<%=url%>/css/Register.css" rel="stylesheet">
</head>
<body>
	<main class="form-register w-100 m-auto">
		<form class="text-center" action="<%=url%>/register" method="POST">
			<img class="mb-4" src="<%=url%>/img/logo/logo.png" alt="" width="72">
			<h1 class="h3 mb-3 fw-normal">ĐĂNG KÝ</h1>
			<% String error = (String) request.getAttribute("error"); %>
			<% if (error != null && !error.isEmpty()) { %>
			<div class="alert alert-danger" role="alert">
				<%= error %>
			</div>
			<% } %>
			<div class="form-floating">
				<input type="text" class="form-control" id="username"
					name="username" placeholder="Tên đăng nhập" required="required"> <label
					for="username">Tên đăng ký</label>
			</div>
			<div class="form-floating">
				<input type="password" class="form-control" id="password"
					name="password" placeholder="Mật khẩu" required="required"> <label
					for="password">Mậtkhẩu</label>
			</div>
			<div class="form-floating mb-4">
				<input type="password" class="form-control" id="re-password"
					name="re-password" placeholder="Nhập lại mật khẩu" required="required"> <label
					for="re-password">Nhập lại mật khẩu</label>
			</div>
			<div class="form-floating mb-4	">
				<input type="email" class="form-control" id="email" name="email" placeholder="Email" required="required"> 
				<label for="email">Email</label>
			</div>
			<button class="w-100 btn btn-lg btn-primary mb-3" type="submit">Đăng
				ký</button>
			<span>Bạn đã có tài khoản? </span> <a href="Login.jsp">Đăng nhập</a>
			<p class="mt-5 mb-3 text-muted">&copy;2025 WomTechShop. All rights reserved.</p>
		</form>
	</main>

	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
		integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
		crossorigin="anonymous">
	</script>
</body>
</html>