<%-- 
    Document   : index
    Created on : Jul 11, 2022, 3:16:36 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang chu</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="javascript:void(0)">SaleWeb Online</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="mynavbar">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="javascript:void(0)">&#127758; Trang chu</a>
                        </li>
                        <c:forEach items="${categories}" var="c">
                            <c:url value="/" var="cUrl">
                                <c:param name="cateId" value="${c.id}"></c:param>
                            </c:url>
                            <li class="nav-item">
                                <a class="nav-link" href="${cUrl}">${c.name}</a>
                            </li>
                        </c:forEach>
                    </ul>
                    <c:url value="/" var="action" />
                    <form method="get" action="${action}" class="d-flex">
                        <input class="form-control me-2" name="kw" type="text" placeholder="Nhap tu khoa...">
                        <button type="submit" class="btn btn-primary" type="button">Tim</button>
                    </form>
                </div>
            </div>
        </nav>

        <div class="container">
            <ul class="pagination">
                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">Next</a></li>
            </ul>
            <c:if test="${products.size() == 0}">
                <p>
                    <em>KHONG co san pham nao!!!</em>
                </p>
            </c:if>
            <div class="row">
                <c:forEach items="${products}" var="p">
                    <div class="col-md-3 col-12">
                        <div class="card">
                            <img class="card-img-top" class="img-fluid" src="https://res.cloudinary.com/dxxwcby8l/image/upload/v1647248652/dkeolz3ghc0eino87iec.jpg" alt="Card image">
                            <div class="card-body">
                                <h4 class="card-title">${p.name}</h4>
                                <p class="card-text">
                                    <fmt:formatNumber value="${p.price}" type="currency"/> VND
                                </p>
                                <a href="#" class="btn btn-primary">Xem chi tiet</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>

        <div class="mt-4 p-5 bg-primary text-white rounded">
            <h1>SaleWeb Online</h1>
            <p>DHT &copy; 2022</p>
        </div>
    </body>
</html>
