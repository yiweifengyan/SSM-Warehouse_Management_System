<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<style type="text/css">
		body {background-color:rgb(252,252,252);}
		h1 {color:rgb(0,0,205);text-align:center;}
		h2 {color:rgb(0,0,0);text-align:center;}
		p.version {color:rgb(169,169,169);text-align:right;}
		p.main {color:rgb(0,0,0);text-align:justify;}
		
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

<h1>超市仓库管理系统V2.0</h1>
<div class="row">
	<div class="col-80">
		<p class="version">
		Working well. Modified: 2019-4-13<br>
		All functions as required. Modified: 2019-4-27<br>
		Add CSS styles. Modified: 2019-4-30
		</p>
	</div>
	
	<div class="col-100">
		<h2>登录系统</h2>
	</div>
</div>
<!-- 网页美工 -->

<div class="center">
 	 <form action="supermarket/login" method="post">
 		 <div class="row">
  			  <div class="col-25">
   				   <label for="fname">帐号:</label>
  			  </div>
  			  <div class="col-50">
  				    <input type="text" id="fname" name="username">
  			  </div>
		  </div>
		  <div class="row">
  			  <div class="col-25">
   				   <label for="fpass">密码:</label>
  			  </div>
  			  <div class="col-50">
  				    <input type="password" id="fpass" name="password">
  			  </div>
		  </div>
		  <div class="row">
    			<input type="submit" value="登录">
  		  </div>
    </form>
</div>
 


<!-- 隐藏旧的输入方式-->
<!-- 旧的输入方式可以正常工作 -->
<!-- 因为美工放弃了此输入，不带美工的话可以正常运行 -->
<!-- 
<form action="supermarket/login" method="post">
	帐号: <input type="text" name="username"><br>
	密码: <input type="password" name="password"><br>
	<input type="submit" value="登录">
</form>
 -->


 
<!-- 放弃使用MVC的Form -->
<!-- 
	<br><br>
	<form:form action="supermarket/login" method="POST"
	modelAttribute="user" >
		<br>
		账号: <form:input path="username"/>
		<br>
		密码: <form:password path="password"/>
		<br>
		<input type="submit" value="Submit"/>
	</form:form>
 -->


<!--  History testing gate -->
<!--
<a href="supermarket/login">Test Homepage</a>
<br><br>
 -->

</body>
</html>
