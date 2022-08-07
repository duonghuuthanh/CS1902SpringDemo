<%-- 
    Document   : cate-stats
    Created on : Aug 7, 2022, 1:17:37 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="text-center text-info">THONG KE SO SAN PHAM THEO DANH MUC </h1>

<div class="row">
    <div class="col-md-6">
        <table class="table">
            <tr>
                <th>Id</th>
                <th>Ten danh muc</th>
                <th>So san pham</th>
            </tr>
            <c:forEach items="${stats}" var="c">
                <tr>
                    <td>${c[0]}</td>
                    <td>${c[1]}</td>
                    <td>${c[2]}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <div class="col-md-6">
        <canvas id="myChart"></canvas>
    </div>
</div>

<div class="row">
    <div class="col-md-6">
        <table class="table">
            <tr>
                <th>Id</th>
                <th>Ten danh muc</th>
                <th>Tong doanh thu</th>
            </tr>
            <c:forEach items="${prodStats}" var="p">
                <tr>
                    <td>${p[0]}</td>
                    <td>${p[1]}</td>
                    <td><fmt:formatNumber type="number" value="${p[2]}" maxFractionDigits="3" /> VND</td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <div class="col-md-6">
        <canvas id="myChart2"></canvas>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="<c:url value="/js/stats.js" />"></script>
<script>
    window.onload = function () {
        let data = [];
        let labels = [];
    <c:forEach items="${stats}" var="c">
        data.push(${c[2]});
        labels.push('${c[1]}');
    </c:forEach>


        cateStats(data, labels);

        let data2 = [];
        let labels2 = [];
    <c:forEach items="${prodStats}" var="p">
        data2.push(${p[2]});
        labels2.push('${p[1]}');
    </c:forEach>

        productStats(data2, labels2);
    }
</script>