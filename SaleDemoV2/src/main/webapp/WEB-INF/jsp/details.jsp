<%-- 
    Document   : details
    Created on : Aug 14, 2022, 3:31:30 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="text-center text-info">CHI TIET SAN PHAM</h1>

<div class="row">
    <div class="col-md-5">
        <img src="${product.image}" class="img-fluid" alt="${product.name}" />
    </div>
    <div class="col-md-7">
        <h1>${product.name}</h1>
        <h2>${product.price} VND</h2>
    </div>
</div>
<c:url value="/api/products/${product.id}/comments" var="endpoint" />
<div class="form-group">
    <textarea class="form-control" placeholder="Nhap noi dung binh luan" id="content"></textarea>
</div>
    <button class="btn btn-danger" onclick="addComment('${endpoint}', ${product.id})">THEM BINH LUAN</button>

<div class="list-group" id="comments">
    <a href="#" class="list-group-item list-group-item-action">First item</a>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment-with-locales.min.js"></script>
<script src="<c:url value="/js/product.js" />"></script>
<script>
    
    window.onload = function () {
        loadComment('${endpoint}', ${product.id});
    }
</script>

