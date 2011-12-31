<%@ page language="java" contentType="text/html; charset=GBK"%> 
<%@ taglib prefix="s" uri="/struts-tags"%> 
<html>
<head>
<title>登录页面</title>
</head>
<body>
<!--使用form标签生成表单元素 --> 
<s:form action="Login1.action"> 
 <!--生成一个用户名文本输入框 --> 
 <s:textfield name="username" label="用户名"/>
 <!--生成一个密码输入框 --> 
 <s:textfield name="password" label="密码"/>
 <!--生成一个提交按钮 --> 
 <s:submit value="提交"/>
</s:form>
</body>
</html>