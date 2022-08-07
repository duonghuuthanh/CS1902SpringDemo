<%-- 
    Document   : stats
    Created on : Aug 7, 2022, 3:17:55 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="text-center text-info">THONG KE BAO CAO</h1>

<div class="row">
    <div class="col-md-6">
        <table class="table">
            <tr>
                <th>Id</th>
                <th>Ten danh muc</th>
                <th>So san pham</th>
            </tr>
            <c:forEach items="${stats}" var="s">
                <tr>
                    <td>${s[0]}</td>
                    <td>${s[1]}</td>
                    <td>${s[2]}</td>
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
                <th>Ten san pham</th>
                <th>Doanh thu</th>
            </tr>
            <c:forEach items="${prodStats}" var="s">
                <tr>
                    <td>${s[0]}</td>
                    <td>${s[1]}</td>
                    <td><fmt:formatNumber type="number" value="${s[2]}" maxFractionDigits="3" /> VND</td>
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
        let data2 = [];
        let labels2 = [];

    <c:forEach items="${stats}" var="s">
        data.push(${s[2]});
        labels.push('${s[1]}');
    </c:forEach>
        
    <c:forEach items="${prodStats}" var="s">
        data2.push(${s[2]});
        labels2.push('${s[1]}');
    </c:forEach>

        loadCateChart(data, labels);
        loadRevenueChart(data2, labels2);
    }
</script>