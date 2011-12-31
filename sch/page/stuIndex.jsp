<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link rel="stylesheet" type="text/css" href="css/tree.css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/stuIndex.js"></script>
</head>
<body>
<%@include file="top.jsp" %>
<div id="nav">
	<a href="IndexAction.action?actionStr=all">网络在线答疑</a>&raquo;&nbsp;个人管理中心
</div>
<div id="content">
<div id="left">
<%@include file="stuTree.jsp" %>
</div>
<div id="right">
<%@include file="person.jsp" %>
</div>
<%@include file="foot.html" %>
</body>
</html>