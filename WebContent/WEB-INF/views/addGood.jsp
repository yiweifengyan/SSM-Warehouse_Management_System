<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page import="java.util.Map"%>

<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Add Good Page of warehouse management system</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <style type="text/css">
		body {background-color:rgb(252,252,252);}
		h1 {color:rgb(0,0,0);text-align:center;}
		h2 {color:rgb(0,0,205);text-align:center;}
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
		  width: 90%;
		  margin-top: 1px;
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
	<h1>新建商品</h1>
	<div class="row">
		<div class="col-80">
			<p class="version"> 
			Version: 1.0 by Arthur and Shaun on 2019-4-14<br>
			Version: 1.5 by Arthur and Shaun on 2019-4-29<br>
			Version: 2.0 by Arthur and Shaun on 2019-5-01
			</p>
		</div>
		<div class="col-100">
			<h2><a href="warehouse">仓库详情  </a><a href="homepage">  返回主页</a></h2>
			<p class="main"> 名称请使用英语，数字请输入正数</p>
		</div>
	</div>



<!-- 美工后的表格 -->
<div class="center">
 	 <form:form action="addGood" method="POST" modelAttribute="good">
 		 <div class="row">
  			  <div class="col-25">
   				   <label for="fname">名称:</label>
  			  </div>
  			  <div class="col-50">
  				    <input type="text" id="fname" name="name">
  			  </div>
		  </div>
		  <div class="row">
  			  <div class="col-25">
   				   <label for="fse">编号:</label>
  			  </div>
  			  <div class="col-50">
  				    <input type="number" id="fse" name="series">
  			  </div>
		  </div>
		  <div class="row">
  			  <div class="col-25">
   				   <label for="fva">单价:</label>
  			  </div>
  			  <div class="col-50">
  				    <input type="number" id="fva" name="value">
  			  </div>
		  </div>
		  <div class="row">
  			  <div class="col-25">
   				   <label for="fvo">单位体积:</label>
  			  </div>
  			  <div class="col-50">
  				    <form:input type="number" id="fvo" path="volume"/>
  			  </div>
		  </div>
		  <div class="row">
  			  <div class="col-25">
   				   <label for="fam">初始数量:</label>
  			  </div>
  			  <div class="col-50">
  				    <form:input type="number" id="fam" path="amount"/>
  			  </div>
		  </div>
		  <div class="row">
  			  <div class="col-25">
   				   <label for="fsm">缺货阈值:</label>
  			  </div>
  			  <div class="col-50">
  				    <form:input type="number" id="fsm" path="small_amount"/>
  			  </div>
		  </div>
		  <div class="row">
    			<input type="submit" value="添加">
  		  </div>
    </form:form>
</div>


<!-- SpringMVC 的表格形式，可以回显-->

<!-- 
	<form:form action="addGood" method="POST" 
		modelAttribute="good">
	名称: <input type="text" name="name"><br>
	编号: <input type="number" name="series"><br>
	单价: <input type="number" name="value"><br>
	单位体积: <form:input type="number" path="volume"/><br>
	初始数量: <form:input type="number" path="amount"/><br>
	缺货阈值: <form:input type="number" path="small_amount"/><br>
	<input type="submit" value="添加"/>
	</form:form>
 -->


	
	
	
<!-- 旧版，不带回显 -->
 <!-- 
 	<form action="addGood" method="post">
	名称: <input type="text" name="name"><br>
	编号: <input type="number" name="series"><br>
	单位体积: <input type="number" name="volume"><br>
	初始数量: <input type="number" name="amount"><br>
	缺货阈值：<input type="number" name="small_amount"><br>
	<input type="submit" value="添加">
</form>
  -->

</body>
</html>