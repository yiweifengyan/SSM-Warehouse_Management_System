<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Page for checking warehouse details</title>
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
	<h1>仓库管理</h1>
	
	<div class="col-80">
		<p> 
		Version: 0.0 by Arthur and Shaun on 2019-3-02<br>
		Version: 0.1 by Arthur and Shaun on 2019-3-23<br>
		Version: 1.0 by Arthur and Shaun on 2019-4-14<br>
		Version: 1.5 by Arthur and Shaun on 2019-4-29<br>
		Version: 2.0 by Arthur and Shaun on 2019-4-30
		</p>
	</div>

	<div class="col-100">
		<h2>
		<a href="addGoodPage">新建商品</a>	
		<a href="in_out">  进出仓库</a>	
		<a href="homepage">  返回主页</a>
		</h2>
	</div>

	<div class="col-75">
		<ul class="b">
			<li>仓库商品总价：￥${requestScope.value}</li>
			<li>仓库商品体积：${requestScope.volume}</li>
			<li>仓库使用比例：${requestScope.usage}%</li>
		</ul>
		
			<c:if test="${empty requestScope.goods }">
			没有商品.
		</c:if>
		
		<c:if test="${!empty requestScope.goods }">
			<table border="1" cellpadding="10" cellspacing="0">
				<tr>
					<th>名称</th>
					<th>编号</th>
					<th>单价</th>
					<th>单位体积</th>
					<th>数量</th>
					<th>缺货阈值</th>
				</tr>
				
				<c:forEach items="${requestScope.goods }" var="good">
					<tr>
						<td>${good.name }</td>
						<td>${good.series }</td>
						<td>${good.value}</td>
						<td>${good.volume }</td>
						<td>${good.amount }</td>
						<td>${good.small_amount}</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
		
	</div>

	
	<!-- 
		<p>仓库商品总价：￥${requestScope.value}</p>
		<p>仓库商品体积：${requestScope.volume}</p>
		<p>仓库使用比例：${requestScope.usage}%</p>
	 -->
	<!-- 历史表格 -->
	<!-- 
		<table border="1">
		<tr>
			<td>名称</td>
			<td>编号</td>
			<td>体积</td>
			<td>数量</td>
		</tr>
		</table>
	 -->


</body>
</html>


    