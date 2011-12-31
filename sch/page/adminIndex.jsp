<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link rel="stylesheet" type="text/css" href="css/tree.css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/admin.js"></script>
</head>
<body>
<div id="head">
	<img src="images/top.jpg" border="0" width="100%" height="120"/>
</div>
<div id="toolbar">
	<ul>
		<s:if test="#session.user==null">
			<li><a href="register.jsp">注册</a></li>
			<li><a href="login.jsp">登录</a></li>
		</s:if>
		<s:else>
			<li></li>
			<li><a href="quitAction.action">退出</a></li>
		</s:else>
	</ul>
</div>
<div id="nav">
	<a href="indexAction.action?actionStr=all">网络在线答疑</a>&raquo;&nbsp;系统管理中心
</div>
<div id="content">
<div id="left">
<%@include file="adminTree.jsp" %>
</div>
<div id="right">
<h1 align="center">系统管理中心欢迎你</h1>
</div>
</div>
<%@include file="foot.html" %>
</body>
</html>