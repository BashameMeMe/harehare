<%@page import="java.util.stream.Collectors"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modal.sachbo"%>
<%@page import="Modal.sachdao"%>
<%@page import="Modal.sach"%>
<%@page import="Modal.loai"%>
<%@page import="Modal.loaibo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Trang Chủ </title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Link Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Bootstrap JS -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Công ty sách ABC</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="#">Trang
							chủ</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Giỏ hàng</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Thanh
							toán</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Lịch sử
							khách hàng</a></li>
					<li class="nav-item"><a class="nav-link" href="dangnhap.jsp">Đăng
							nhập</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Đăng
							xuất</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="row">
		<div class="col-sm-3">
			<%
			loaibo lbo = new loaibo();
			for (loai L : lbo.getloai()) {
			%>
			<a href="TrangChu.jsp?ml=<%=L.getMaloai()%>"> <%=L.getTenloai()%>
				<br>
			</a>
			<%
			}
			%>
		</div>
		<div class="col-sm-6">
			<%
    String maloai = request.getParameter("ml");
    sachbo sbo = new sachbo();
    ArrayList<sach> dssach = sbo.getsach(); 

    if (maloai != null && !maloai.isEmpty() ) {
        dssach = (ArrayList<sach>) dssach.stream()
                        .filter(s -> s.getMaloai().equalsIgnoreCase(maloai))
                        .collect(Collectors.toList());
    }
%>

<table class="table table-bordered">
    <thead>
        <tr>
            <th>Mã sách</th>
            <th>Tên sách</th>
            <th>Số lượng</th>
            <th>Giá</th>
            <th>Số tập</th>
            <th>Tác giả</th>
            <th>Ảnh</th>
        </tr>
    </thead>
    <tbody>
        <%
            for(sach s : dssach) {
        %>
        <tr>
            <td><%= s.getMasach() %></td>
            <td><%= s.getTensach() %></td>
            <td><%= s.getSoluong() %></td>
            <td><%= s.getGia() %></td>
            <td><%= s.getSotap() %></td>
            <td><%= s.getTacgia() %></td>
            <td><img src="<%=s.getAnh()%>" alt=" <%= s.getTensach() %>" width="100" height="100"/></td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>
		</div>
		<div class="col-sm-3">
		Tim kiem
		<form action="TrangChu.jsp" method="post">
				<input type ="text" name = "TimKiem"> <br>
				<button type="search">Tìm kiếm</button>
		</form>
		</div>
	</div>
</body>
</html>