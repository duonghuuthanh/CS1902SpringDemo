<%-- 
    Document   : header
    Created on : Jul 25, 2022, 3:20:14 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
