<%-- 
    Document   : products
    Created on : Jul 25, 2022, 3:26:58 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="text-center text-primary">QUAN LY SAN PHAM</h1>

<table class="table">
    <tr>
        <th></th>
        <th>Name</th>
        <th>Price</th>
        <th></th>
    </tr>
    <tbody id="myProd">
        
    </tbody>
</table>

<script src="<c:url value="/js/product.js" />"></script>
<script>
    <c:url value="/api/products" var="endpoint" />
    window.onload = function() {
        loadProducts('${endpoint}');
    }
</script>
