<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- footer.jsp -->
<footer class="bg-dark text-white text-center py-3 mt-5">
    &copy; <span id="year"></span> WomTechShop. All rights reserved.
</footer>

<script>
    document.querySelector("#year").textContent = new Date().getFullYear();
</script>
