<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Page for log management</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <style type="text/css">
 	    body {background-color:rgb(252,252,252);}
		h1 {color:rgb(0,0,0);text-align:center;}
		h2 {color:rgb(0,0,0);text-align:center;}
		h3 {color:rgb(0,0,0);text-align:center;}
		p  {color:rgb(169,169,169);text-align:right;}
		a:link {color:rgb(0,0,205);text-decoration:none;}
		a:visited {color:rgb(0,0,205);text-decoration:none;}
		ul.b {list-style-type:disc;}
		.col-75 {
		  float: right;
		  width: 70%;
		  margin-top: 6px;
		  text-align:left;
		}
		.col-80 {
		  float: left;
		  width: 90%;
		  margin-top: 6px;
		  text-align:right;
		}
		.col-100 {
		  float: left;
		  width: 100%;
		  margin-top: 6px;
		}
		.row:after {
		  content: "";
		  display: table;
		  clear: both;
		}
    </style>
</head>



<body>
	<h1>日志管理</h1>
	<div class="col-80">
		<p>
		 Version: 0.0 by Arthur and Shaun on 2019-3-02<br>
		 Version: 0.1 by Arthur and Shaun on 2019-3-23<br>
		 Version: 1.0 by Arthur and Shaun on 2019-4-14<br>
		 Version: 2.0 by Arthur and Shaun on 2019-5-01
		</p>
	</div>
	
	<div class="col-100">
		<h2><a href="homepage">返回主页</a></h2>
	</div>
	
	<div class="col-75">
		<ul class="b">
			<li>日志数量：${requestScope.lognum}</li>
		</ul>
		<!-- <p>日志数量：${requestScope.lognum}</p> -->	
	
		<c:if test="${empty requestScope.logs }">
			没有操作记录.
		</c:if>
		<c:if test="${!empty requestScope.logs }">
			<table border="1" cellpadding="10" cellspacing="0">
				<tr>
					<th>日期</th>
					<th>操作人</th>
					<th>商品编号</th>
					<th>变动数量</th>
				</tr>
				
				<c:forEach items="${requestScope.logs }" var="log">
					<tr>
						<td>${log.time }</td>
						<td>${log.operator }</td>
						<td>${log.goodseries }</td>
						<td>${log.amount }</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
	
	<!-- 历史表格 -->
	<!-- 
		<table border="1">
		<tr>
			<td>日志编号</td>
			<td>用户</td>
			<td>商品</td>
			<td>数量</td>
			<td>类型</td>
			<td>日期</td>
			<td>时间</td>
		</tr>
		</table>
		<br>
	 -->


</body>
</html>
    