<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>验证数据</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/styles.css">
	

	</head>

	<body>
		<s:actionerror />
		<s:actionmessage/>
		<s:form action="/test/validate">
		输入内容： <s:textfield name="msg"></s:textfield> 
			<s:fielderror key="msg.hello"></s:fielderror> 
			<br/>
			<s:submit/>
		</s:form>
	</body>
</html>
