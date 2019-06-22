<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page import="java.util.Map"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Page for goods input and output</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <style type="text/css">
   		body {background-color:rgb(252,252,252);}
		h1 {color:rgb(0,0,0);text-align:center;}
		h2 {color:rgb(0,0,0);text-align:center;}
		h3 {color:rgb(0,0,0);text-align:center;}
		p.version {color:rgb(169,169,169);text-align:right;}
		p.main {color:rgb(0,0,0);text-align:center;}
		a:link {color:rgb(0,0,205);text-decoration:none;}
		a:visited {color:rgb(0,0,205);text-decoration:none;}
    
		.center {
		    margin: auto;
		    width: 50%;
		    border: 3px solid rgb(173,216,230);
		    padding: 10px;
		}
		
		* {  box-sizing: border-box;}
		
		input[type=text], select, textarea {
		  width: 100%;
		  padding: 12px; 
		  border: 1px solid #ccc;
		  border-radius: 4px;
		  resize: vertical;
		}
		input[type=number], select, textarea {
		  width: 100%;
		  padding: 12px; 
		  border: 1px solid #ccc;
		  border-radius: 4px;
		  resize: vertical;
		}
		label {
		  padding: 12px 12px 12px 0;
		  display: inline-block;
		}
		
		input[type=submit] {
		  background-color: #4CAF50;
		  color: white;
		  padding: 12px 20px;
		  border: none;
		  border-radius: 4px;
		  cursor: pointer;
		  float: right;
		}
		
		input[type=submit]:hover {
		  background-color: #45a049;
		}
		
		.col-25 {
		  float: left;
		  width: 25%;
		  margin-top: 6px;
		  text-align:right;
		}
		
		.col-50 {
		  float: left;
		  width: 50%;
		  margin-top: 6px;
		}
		
		.row:after {
		  content: "";
		  display: table;
		  clear: both;
		}
		
		.col-80 {
		  float: left;
		  width: 95%;
		  margin-top: 6px;
		  text-align:right;
		}
		.col-100 {
		  float: left;
		  width: 100%;
		  margin-top: 6px;
		}
    </style>
</head>
<body>
	<h1>商品出入仓库登记</h1>
	<div class="row">
		<div class="col-80">
			<p class="version"> 
			Version: 0.0 by Arthur and Shaun on 2019-3-02<br>
			Version: 0.1 by Arthur and Shaun on 2019-3-23<br>
			Version: 1.0 by Arthur and Shaun on 2019-4-14<br>
			Version: 1.5 by Arthur and Shaun on 2019-4-29<br>
			Version: 2.0 by Arthur and Shaun on 2019-5-01
			</p>
		</div>
		<div class="col-100">
			<h2><a href="warehouse">仓库详情  </a><a href="homepage">  返回主页</a></h2>
		</div>
	</div>
	
	<c:if test="${empty requestScope.goods }">
		<p class="main"> 请先添加商品。</p>
	</c:if>
	

	
	<c:if test="${!empty requestScope.goods }">
	
		<div class="center">
	 	   <form:form action="changeGoodAmount" method="POST" modelAttribute="good">
	 		 <div class="row">
	  			  <div class="col-25">
	   				   <label for="fname">商品:</label>
	  			  </div>
	  			  <div class="col-50">
	  				    <form:select path="series" id="fname"
						items="${goods }" itemLabel="name" itemValue="series"></form:select>
	  			  </div>
			  </div>
			  <div class="row">
	  			  <div class="col-25">
	   				   <label for="fse">数量:</label>
	  			  </div>
	  			  <div class="col-50">
	  				    <input type="number" id="fse" name="amount">
	  			  </div>
			  </div>
			  <div class="row">
			  
			  	  <div class="col-25">
	   				   <label for="fva"> </label>
	  			  </div>
			   
	  			  
	  			  <div class="col-50">
	  				    <input type="radio" id="fva" name="types" value="1">入库
						<input type="radio" id="fva" name="types" value="-1">出库
	  			  </div>
			  </div>
			  <div class="row">
    			<input type="submit" value="确认">
  		  	</div>
			</form:form>
		</div>
	</c:if>	
	
	
	<!-- SpringMVC 的表格形式，可以设置下拉选框-->
	<!-- 
		<form:form action="changeGoodAmount" method="POST" modelAttribute="good">
			商品: <form:select path="series" 
				items="${goods }" itemLabel="name" itemValue="series"></form:select>
			数量：<input type="number" name="amount"><br><br>
			<input type="radio" name="types" value="1">入库
			<input type="radio" name="types" value="-1">出库<br><br>
			<input type="submit" value="确认">
		</form:form>
	 -->
		
	
	

	
	
	
<!-- 旧版输入，没有候选框 -->
<!-- 
	<br>
	<form action="changeGoodAmount" method="post">
	编号：<input type="number" name="series"><br>
	数量：<input type="number" name="amount"><br>
	<input type="radio" name="types" value="1">入库<br>
	<input type="radio" name="types" value="-1">出库<br>
	<input type="submit" value="确认提交">
	</form>
 -->

</body>
</html>

    