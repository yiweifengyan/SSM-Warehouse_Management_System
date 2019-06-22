<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Page for user management</title>
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
		input[type=password], select, textarea {
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
	<h1>用户管理</h1>
	
	<div class="row">
		<div class="col-80">
			<p class="version"> 
			Version: 0.0 by Arthur and Shaun on 2019-3-02<br>
			Version: 0.1 by Arthur and Shaun on 2019-3-23<br>
			Version: 1.0 by Arthur and Shaun on 2019-4-27<br>
			Version: 2.0 by Arthur and Shaun on 2019-5-01
			</p>
		</div>
		<div class="col-100">
			<h2><a href="homepage">返回主页</a></h2>
		</div>
	</div>
	
	<c:if test="${requestScope.isroot}">
		<h3> 新建用户（仅对管理员生效）</h3>
		<div class="center">
		 	 <form action="addUser" method="post">
		 		 <div class="row">
		  			  <div class="col-25">
		   				   <label for="fname">帐号:</label>
		  			  </div>
		  			  <div class="col-50">
		  				    <input type="text" id="fname" name="aname">
		  			  </div>
				  </div>
				  <div class="row">
		  			  <div class="col-25">
		   				   <label for="fpass">密码:</label>
		  			  </div>
		  			  <div class="col-50">
		  				    <input type="password" id="fpass" name="apass">
		  			  </div>
				  </div>
				  <div class="row">
		  			  <div class="col-25">
		   				   <label for="fpass">确认密码:</label>
		  			  </div>
		  			  <div class="col-50">
		  				    <input type="password" id="fpass" name="bpass">
		  			  </div>
				  </div>
				  <div class="row">
		    			<input type="submit" value="确认添加">
		  		  </div>
		    </form>
		</div>
		
		<!-- 
			<form action="addUser" method="post">
				帐号：<input type="text" name="aname"><br>
				密码：<input type="password" name="apass"><br>  
				确认密码：<input type="password" name="bpass"><br>  
				<input type="submit" value="确认添加">
			</form>
		<br><br>
		 -->
		 
	</c:if>
	

	<h3>修改本人密码</h3>
	
	<div class="center">
	 	 <form action="change_password" method="post">
	 		 <div class="row">
	  			  <div class="col-25">
	   				   <label for="fname">原始密码:</label>
	  			  </div>
	  			  <div class="col-50">
	  				    <input type="password" id="fname" name="oldpass">
	  			  </div>
			  </div>
			  <div class="row">
	  			  <div class="col-25">
	   				   <label for="fpass">新的密码:</label>
	  			  </div>
	  			  <div class="col-50">
	  				    <input type="password" id="fpass" name="newpass">
	  			  </div>
			  </div>
			  <div class="row">
	  			  <div class="col-25">
	   				   <label for="fpass">确认密码:</label>
	  			  </div>
	  			  <div class="col-50">
	  				    <input type="password" id="fpass" name="newreal">
	  			  </div>
			  </div>
			  <div class="row">
	    			<input type="submit" value="确认修改">
	  		  </div>
	    </form>
	</div>
	
	<!-- 
		<form action="change_password" method="post">
			旧密码：<input type="password" name="oldpass"><br>
			新密码：<input type="password" name="newpass"><br>
			确认新密码：<input type="password" name="newreal"><br>   
			<input type="submit" value="确认修改">
		</form>
	 -->
	

</body>
</html>
    