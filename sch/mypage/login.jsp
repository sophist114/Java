<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gbk">
		<title>��¼����</title>
	</head>
	<body>
	<s:form action="login" method="post"> 
	<s:textfield label="�û���" name="username"></s:textfield>
	<s:password label="����" name="password"></s:password> 
	<s:submit value="�ύ"></s:submit>
	<s:reset value="����"></s:reset>
	</s:form>
	</body>
</html>