<%-- 
    Document   : product-details
    Created on : Aug 14, 2022, 1:55:22 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="text-center text-info">CHI TIET SAN PHAM</h1>

<div class="row">
    <div class="col-md-5">
        <img src="${product.image}" class="img-fluid" />
    </div>
    <div class="col-md-7">
        <h1>${product.name}</h1>
    </div>
</div>
<c:url value="/api/comments" var="url" />
<div class="form-group">
    <textarea class="form-control" id="contentId" placeholder="Noi dung comment"></textarea>
</div>
    <input type="button" onclick="addComment('${url}', ${product.id})" value="Binh luan" class="btn btn-danger" />

<ul id="comments" class="list-group">

</ul>

<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment-with-locales.min.js"></script>
<script src="<c:url value="/js/product.js" />"></script>
<script>
    
    window.onload = function () {
        loadComments('${url}')
    }
</script>
