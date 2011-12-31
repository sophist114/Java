<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>验证数据</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="/text/css" href="css/styles.css" />
	</head>

	<body>
		<s:form action="/test/new_validate" >
			<s:textfield name="msg" label=" 姓名 " />
			<s:textfield name="age" label=" 年龄 " />
			<s:submit align="middle" value="提交"/>
		</s:form>
	</body>
</html>
