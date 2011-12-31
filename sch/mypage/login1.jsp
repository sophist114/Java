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
<%@include file="top.jsp"%>
<div id="nav">
	<a href="indexAction.action">网络在线答疑</a>&raquo;&nbsp;登陆
</div>
<div id="box">
	<div id="title">&nbsp;&nbsp;登陆</div>
	<div id="body">
		  <table cellspacing="0" cellpading="0" width="100%" border="0">
            	<form action="loginaction.action" method="post">
					<tr>
						<td align="right" width="30%">验证码:</td>
						<td>
							<input class="input" id="yzm" type="text" name="yzm" size="6"/>
							<a href="javascript:reloadImage();">
								<img id="pic" src="yzm.jsp" border="0" style="vertical-aligin:middle;">
							</a>
							<a href="javascript:reloadImage();">
								<font color="#bc2931"  size="2">看不清楚?换张图片</font>
							</a>
						</td>
					</tr>
					<tr>
						<td align="right" width="30%">用户名:</td>
						<td>
							<input class="input" id="username" type="text" name="username" size="12"/>&nbsp;&nbsp;
							<a href="register.jsp">立即注册</a>
						</td>
					</tr>
					<tr>
					    <td align="right" width="20%">密&nbsp;&nbsp;&nbsp;&nbsp;码:</td>
						<td>
							<input class="input" id="password" type="password" name="password" size="12"/>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input id="button" type="submit" value="登录"/> 
						</td>
					</tr>
				</form>
            </table>
	</div>
</div>
<%@include file="foot.html"%>
</body>
</html>