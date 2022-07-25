<%-- 
    Document   : index
    Created on : Jul 11, 2022, 3:16:36 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<ul class="pagination">
    <c:forEach begin="1" end="${Math.ceil(productCounter/pageSize)}" var="i">
        <c:url value="/" var="u" >
            <c:param name="page" value="${i}" />
            
        </c:url>
        <li class="page-item"><a class="page-link" href="${u}">Trang ${i}</a></li>
    </c:forEach>
    
    
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
                        <fmt:formatNumber value="${p.price}" maxFractionDigits="3" type="number"/> VND
                    </p>
                    <a href="#" class="btn btn-primary">Xem chi tiet</a>
                </div>
            </div>
        </div>
    </c:forEach>
</div>

