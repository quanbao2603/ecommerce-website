<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
	integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
	crossorigin="anonymous"></script>
<%
String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
		+ request.getContextPath();
%>
<link href="<%=url%>/css/Login.css" rel="stylesheet">
</head>
<body>
	<main class="form-login w-100 m-auto">
		<form class="text-center" action="<%=url %>/login" method="POST">
			<img class="mb-4" src="<%=url%>/img/logo/logo.png" alt="" width="72">
			<h1 class="h3 mb-3 fw-normal">ĐĂNG NHẬP</h1>
			<div class="form-floating">
				<input type="text" class="form-control" id="username" name="username" placeholder="Tên đăng nhập"> 
				<label for="username">Tên đăng nhập</label>
			</div>
			<div class="form-floating">
				<input type="password" class="form-control" id="password" name="password" placeholder="Mật khẩu" > 
				<label for="password">Mật khẩu</label>
			</div>
			<div class="checkbox mb-3 d-inline-flex align-items-center">
				<label>
					<input type="checkbox" value="remember-me">
					Ghi nhớ tài khoản
				</label>
			</div>
			<button class="w-100 btn btn-lg btn-primary mb-3" type="submit">Đăng
				nhập</button>
			<a href="dangky.jsp">Đăng ký tài khoản mới</a>
			<p class="mt-5 mb-3 text-muted">&copy; 2020–2025</p>
		</form>
	</main>
</body>
</html>