<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆页面</title>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/reload.js"></script>
<script type="text/javascript" src="js/login.js"></script>
</head>
<body>
<form action="login.action" method="post">
用户名：<input type="text" value="admin"/>
密码：<input type="password" value="admin"/>
<input type="submit" value="提交"/>
<input type="reset" value="重置"/>
</form>

</body>
</html>