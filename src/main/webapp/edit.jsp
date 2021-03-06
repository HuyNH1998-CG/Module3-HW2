<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28/7/2021
  Time: 8:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Editing</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="jumbotron text-center">
    <h1>Điện máy không màu</h1>
</div>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <h1 class="navbar-brand">Menu</h1>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a href="/loggedin" class="nav-link">Quay Lại</a>
            </li>
        </ul>
    </div>
</nav>
<div class="container" style="margin-top: 30px;">
    <div class="row">
        <div class="col-sm-4">
            <form action="/logout" method="post">
                <button class="btn btn-primary">Logout</button>
            </form>
        </div>
        <div class="col-sm-8">
            <h1>Nhập thông tin mới cho sản phẩm</h1>
            <form action="/edit" method="post" class="container">
                <input type="hidden" name="pos" value="<%=request.getParameter("pos")%>" readonly><br>
                <label>ID</label><br>
                <input type="text" name="id" value="<%=request.getParameter("id")%>"><br>
                <label>Tên</label><br>
                <input type="text" name="name" value="<%=request.getParameter("name")%>"><br>
                <label>Giá</label><br>
                <input type="text" name="price" value="<%=request.getParameter("price")%>"><br>
                <label>Ảnh</label><br>
                <input type="text" name="picture" value="<%=request.getParameter("picture")%>"><br>
                <button type="submit" class="btn btn-danger">Sửa</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
