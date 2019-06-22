<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Homepage of warehouse management system</title>
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
.row:after {
  content: "";
  display: table;
  clear: both;
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
    </style>
</head>
<body>
	<h1>超市仓库管理系统V2.0</h1>
	<div class="col-80">
	<p class="version"> 
	Version: 0.0 by Arthur and Shaun on 2019-3-02<br>
	Version: 0.1 by Arthur and Shaun on 2019-3-23<br>
	Version: 1.0 by Arthur and Shaun on 2019-4-14<br>
	Version: 1.5 by Arthur and Shaun on 2019-4-29<br>
	Version: 2.0 by Arthur and Shaun on 2019-4-30
	</p>
	</div>
	
	<div class="col-100">
	<h2>
    <a href="warehouse"  >仓库管理</a><br>	
	<a href="addGoodPage">新建商品 </a>
    <a href="in_out"     > 出入仓库</a><br><br>
    <a href="log_manage" >日志管理 </a>
    <a href="user_manage"> 用户管理</a>
    </h2>
    <h3><a href="logout" >退出系统</a></h3>
    <p class="main">
    	注：此系统为单用户系统，遇到非法输入时会停留在原页面。<br>
    	添加商品、出入库成功会自动转入商品详情页，添加用户、修改密码成功会自动返回主页。
    </p>
	</div>
    

</body>
</html>
