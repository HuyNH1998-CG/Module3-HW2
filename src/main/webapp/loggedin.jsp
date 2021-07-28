<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28/7/2021
  Time: 7:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
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
                <a href="/add.jsp" class="nav-link">Thêm sản phẩm</a>
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
            <table class="table">
                <tr>
                    <th>ID</th>
                    <th>Tên</th>
                    <th>Ảnh</th>
                    <th>Giá</th>
                </tr>
                <c:forEach var="gun" items="${Gun}" varStatus="loop">
                    <tr>
                        <td>${gun.id}</td>
                        <td>${gun.name}</td>
                        <td>${gun.price}</td>
                        <td><img src="${gun.picture}" style="width: 400px;height: 300px"></td>
                        <td>
                            <form action="/delete" method="post">
                                <button type="submit" name="pos" value="${loop.index}">Xóa</button>
                            </form>
                        </td>
                        <td>
                            <form action="edit.jsp" method="post">
                                <button type="submit" name="pos" value="${loop.index}">Sửa</button>
                                <input type="hidden" name="id" value="${gun.id}">
                                <input type="hidden" name="name" value="${gun.name}">
                                <input type="hidden" name="price" value="${gun.price}">
                                <input type="hidden" name="picture" value="${gun.picture}">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>
